import React from 'react';

import Guest from "@/Layouts/Guest";
import Input from "@/Components/Input";
import Label from "@/Components/Label";
import {useForm} from "@inertiajs/inertia-react";
import clsx from "clsx";

function FormInput({name, type, value, isFocused, required, className, autocomplete, handleChange, title}) {
    return (
        <div>
            <Label forInput={name} value={title} className={'form-label'}/>
            <Input
                name={name}
                type={type}
                value={value}
                isFocused={isFocused}
                required={required}
                className={clsx([className])}
                autoComplete={autocomplete}
                handleChange={handleChange}
            />
        </div>
    )
}

const NewRecipe = () => {
    const {data, setData, post, processing, errors, reset} = useForm({
        title: '',
        body: '',
    });
    const onHandleChange = (event) => {
        setData(event.target.name, event.target.type === 'checkbox' ? event.target.checked : event.target.value);
    };

    const submit = (e) => {
        e.preventDefault();
        post(route('new_recipe'));
    };

    return (
        <Guest>
            <form onSubmit={submit} className={'flex flex-col gap-y-5'}>

                <FormInput name={'title'}
                           title={'Title'}
                           value={data.title}
                           handleChange={onHandleChange}
                           className={'w-full'}
                           isFocused={true}
                />
                <FormInput name={'body'}
                           title={'Recipe'}
                           value={data.body}
                           handleChange={onHandleChange}
                           className={'w-full'}
                />
                <div className={'flex justify-end mt-5'}>
                    <button type="submit" className="btn btn-primary btn-lg">Save</button>
                    <button type="button" className="btn btn-danger btn-lg ml-3">Cancel</button>
                </div>
            </form>
        </Guest>
    );
};

export default NewRecipe;
