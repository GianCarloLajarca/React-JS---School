import React from 'react'
import { LiaEdit, LiaHistorySolid, LiaTrashAltSolid } from 'react-icons/lia'
import { PiArchive } from 'react-icons/pi'
import TableLoader from '../../../../partials/TableLoader'
import NoData from '../../../../partials/NoData'
import SpinnerFetching from '../../../../partials/spinners/SpinnerFetching'
import Toast from '../../../../partials/Toast'
import ModalDelete from '../../../../partials/modals/ModalDelete'
import ModalConfirm from '../../../../partials/modals/ModalConfirm'

const StaffTable = ({setShowInfo, showInfo, staff, isLoading, setItemEdit, setIsAdd, setStaffInfo }) => {
    const [isActive, setIsActive] = React.useState(false);
    const [isArchiving, setIsArchiving] = React.useState(0);
    const [isDelete, setIsDelete] = React.useState(false);
    const [isSuccess, setIsSuccess] = React.useState(false);
    const [message, setMessage] = React.useState('');
    const [id, setId] = React.useState('');

    const handleShowInfo = (item) => {
        setStaffInfo(item)
        setShowInfo(true)
    };
    let counter = 1;

    const handleEdit = (item) => {
        setIsAdd(true)
        setItemEdit(item)
    }

    const handleActive = (item) => {
        setIsActive(true);
        setId(item.staff_aid)
        setIsDelete(0)
    }
    const handleRestore = (item) => {
        setIsActive(true);
        setId(item.staff_aid)
        setIsArchiving(1)
    }
    const handleDelete = (item) => {
        setIsDelete(true);
        setId(item.staff_aid)
    }
  return (
    <>
         <div className="table-wrapper relative">
        {/* <SpinnerFetching/> */}
                    <table>
                        <thead>
                            <tr>
                                <th className='w-[20px]'>#</th>
                                <th className='w-[150px]'>Name</th>
                                <th className='w-[80px]'>Class</th>
                                <th className='w-[80px]'>Age</th>
                                <th className='w-[80px]'>Gender</th>
                                <th className='w-[80px]'>Email</th>
                                <th className='w-[100px]'>Action</th>
                            </tr>
                        </thead>
             <tbody>
                        {isLoading && ( 
                <tr>
                    <td colSpan={9}>
                        <TableLoader count="20" cols="4"/>
                    </td>
                </tr>)
                }

                {staff?.data.length === 0 && (
                    <tr>
                        <td colSpan={9}>
                            <NoData/>
                        </td>
                    </tr>
                )}
             
                {staff?.data.map((item, key) => (
                        <tr onDoubleClick={() => handleShowInfo(item)} key={key}>
                            <td>{counter++}</td>
                            <td>{item.staff_name}</td>
                            <td>{item.staff_class}</td>
                            <td>{item.staff_age}</td>
                            <td>{item.staff_gender}</td>
                            <td>{item.staff_email}</td>
                            <td className='table-action'>
                            <ul>
                                {item.staff_is_active ? (
                                    <>
                                        <li><button className="tooltip" data-tooltip="Edit"  onClick={()=>handleEdit(item)}><LiaEdit/></button></li>
                                        <li><button className="tooltip" data-tooltip="Archive" onClick={()=>handleActive(item)}><PiArchive /></button></li>
                                    </>
                                ) : (
                                    <>
                                    <li><button className="tooltip" data-tooltip="Restore"
                                        onClick={()=>handleRestore(item)}><LiaHistorySolid/></button></li>
                                    <li><button className="tooltip" data-tooltip="Delete" onClick={()=>handleDelete(item)}><LiaTrashAltSolid/></button></li></>
                                )}
                            </ul>
                            </td>
                        </tr>
                    ))              
                }
            </tbody>

        </table>
    </div>
        {isActive && <ModalConfirm position="center" setIsSuccess={setIsSuccess} setMessage={setMessage} setIsActive={setIsActive} queryKey="staff" endpoint={`/v1/staff/active/${id}`} 
        isArchiving={isArchiving}/>}

        {isDelete && <ModalDelete position="center" setIsSuccess={setIsSuccess} setMessage={setMessage} setIsDelete={setIsDelete} endpoint={`/v1/staff/${id}`} 
        queryKey="staff"/>}

        {isSuccess && <Toast setIsSuccess={setIsSuccess} message={message}/>}
    </>
  )
}

export default StaffTable