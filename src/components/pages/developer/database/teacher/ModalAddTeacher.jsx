import React from 'react'
import { LiaTimesSolid } from 'react-icons/lia'
import ModalWrapper from '../../../../partials/modals/ModalWrapper'
import SpinnerButton from '../../../../partials/spinners/SpinnerButton'
import { InputSelect, InputText } from '../../../../helpers/FormInputs'
import { Form, Formik } from 'formik'
import * as Yup from 'yup'
import { queryData } from '../../../../helpers/queryData'
import { useMutation, useQueryClient } from '@tanstack/react-query'

const ModalAddTeacher = ({setIsAdd, setMessage, setIsSuccess, itemEdit}) => {
    const handleClose = () => setIsAdd(false);

    const queryClient = useQueryClient();
    
    const mutation = useMutation({
        mutationFn: (values) =>
        queryData(
            itemEdit ? `/v1/teacher/${itemEdit.teacher_aid}` :`/v1/teacher` ,
            itemEdit ? "put" : "post",
            values
        ),

        onSuccess: (data) => {
        queryClient.invalidateQueries({ queryKey: ["teacher"] });
        if (data.success) {
            setIsAdd(false);
            setIsSuccess(true);
            setMessage(`Successfuly updated.`);
        } else {
            // setIsError(true);
        }
        },
    });

    const initVal = {
        teacher_name: itemEdit ? itemEdit.teacher_name : "",
        teacher_class: itemEdit ? itemEdit.teacher_class : "",
        teacher_age: itemEdit ? itemEdit.teacher_age : "",
        teacher_email: itemEdit ? itemEdit.teacher_email : "",
        teacher_gender: itemEdit ? itemEdit.teacher_gender : "",
    }

    const yupSchema = Yup.object({
        teacher_name: Yup.string().required("Required"),
        teacher_class: Yup.string().required("Required"),
        teacher_age: Yup.number().required("Required"),
        teacher_email: Yup.string().required("Required"),
        teacher_gender: Yup.string().required("Required"),
    })
  return (
    <ModalWrapper>
        <div className="main-modal w-[300px] bg-secondary text-content h-full">
                <div className="modal-header p-4 relative">
                    <h2>New Teacher</h2>
                    <button className='absolute top-[25px] right-4' onClick={handleClose}><LiaTimesSolid/></button>
                </div>
                <div className="modal-body p-4">
                    <Formik
                        initialValues={initVal}
                        validationSchema={yupSchema}
                        onSubmit={async (values) => {
                            mutation.mutate(values)
                        }}
                    >

                {(props) => {
                        return (
                        <Form className='flex flex-col h-[calc(100vh-110px)]'>
                        <div className='grow overflow-y-auto'>
                            <div className="input-wrap">
                                <InputText
                                    label="Name"
                                    type="text"
                                    name="teacher_name"
                                />
                            </div>
                            <div className="input-wrap">
                                <InputText
                                    label="Class"
                                    type="text"
                                    name="teacher_class"
                                />
                            </div>
                            <div className="input-wrap">
                            <InputText
                                    label="Age"
                                    type="number"
                                    name="teacher_age"
                                />
                            </div> 
                            <div className="input-wrap">
                            <InputText
                                    label="Email"
                                    type="text"
                                    name="teacher_email"
                                />
                            </div> 
                            <div className="input-wrap">
                                <InputSelect label="Select Gender" name="teacher_gender">
                                        <option value="" hidden>Select</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                </InputSelect>
                            </div> 
                            
                        </div>

                        <div className='form-action'>
                            <button className='btn btn-form btn--accent' type="submit"> Add {mutation.isPending ? <SpinnerButton/> : "Add"}</button>
                            <button className='btn btn-form btn--cancel' type="button" onClick={handleClose}> Cancel </button>
                        </div>
                    </Form>
                        )}}
                    </Formik>
                    
                </div>
        </div>
   </ModalWrapper>
  )
}

export default ModalAddTeacher