import React from 'react'
import Navigation from '../../../../partials/Navigation'
import Header from '../../../../partials/Header'
import { CiSearch } from 'react-icons/ci'
import { Link } from 'react-router-dom'
import { FiPlus } from 'react-icons/fi'
import StaffTable from './StaffTable'
import useQueryData from '../../../../custom-hook/useQueryData'
import DatabaseInformationStaff from '../DatabaseInformationStaff'
import ModalAddStaff from './ModalAddStaff'
import Toast from '../../../../partials/Toast'


const Staff = () => {
    const [showInfo, setShowInfo] = React.useState(false);
    const [isAdd, setIsAdd] = React.useState(false);
    const [isSuccess, setIsSuccess] = React.useState(false);
    const [message, setMessage] = React.useState('');
    const [itemEdit, setItemEdit] = React.useState(null);
    const [staffInfo, setStaffInfo] = React.useState('');

    const {
        isLoading,
        isFetching,
        error,
        data: staff,
      } = useQueryData(
        "/v1/staff", // endpoint
        "get", // method
        "staff" // key
      );

      const handleAdd = () => {
        setIsAdd(true)
        setItemEdit(null)
  }

  return (
    <>
    <section className='flex overflow-x-hidden'>
        <Navigation />
        <main className='w-[calc(100%-250px)]'>
            <Header/>
            <div className='flex relative'>
                <div className={`main-wrapper px-4 transition-all py-3 ${showInfo ? "w-3/4" : "w-full"}`}>
                <div className='flex justify-between items-center'>
                    <h1>Staff Database</h1>
                    <form action="" className='relative'>
                        <input type="text" placeholder='Search Staff' className='p-1 px-3 pl-10 outline-none border border-stone-800 rounded-md placeholder:text-white 
                        placeholder:opacity-20 bg-secondary'/>
                        <CiSearch className='absolute top-2 left-2 z-20 text-white text-2xl opacity-20'/>
                    </form>
                </div>

                <div className='tab flex justify-between items-center mt-8 border-b border-line mb-8'>
                    <ul className='flex gap-10'>
                        <li className='tab-link'><Link to="/database/student">Student</Link></li>
                        <li className='tab-link'><Link to="/database/teacher">Teacher</Link></li>
                        <li className='tab-link active'><Link to="/database/staff">Staff</Link></li>
                    </ul>
                    <button className='btn btn--accent' onClick={handleAdd}>
                        <FiPlus/> New
                    </button>
                </div>

                <StaffTable setStaffInfo={setStaffInfo} showInfo={showInfo} setShowInfo={setShowInfo} isLoading={isLoading} 
                staff={staff} setItemEdit={setItemEdit} setIsAdd={setIsAdd}/>
            </div>

            <DatabaseInformationStaff showInfo={showInfo} staffInfo={staffInfo} setShowInfo={setShowInfo}/>
        </div>  
    </main>
</section>

{isAdd && <ModalAddStaff setIsAdd={setIsAdd} setIsSuccess={setIsSuccess} setMessage={setMessage} itemEdit={itemEdit}/>}

{isSuccess && <Toast setIsSuccess={setIsSuccess} message={message}/>}

{/* <ModalAddStaff/> */}
{/* <ModalError position="center"/> */}
{/* <ModalValidate position="center"/> */}
{/* <ModalConfirm position="center"/> */}
{/* <SpinnerWindow/> */}
</>
  )
}

export default Staff