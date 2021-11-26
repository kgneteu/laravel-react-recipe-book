import React from 'react';

import Guest from "@/Layouts/Guest";
import Input from "@/Components/Input";
import Label from "@/Components/Label";
import {useForm} from "@inertiajs/inertia-react";
import clsx from "clsx";
import Button from "@/Components/Button";
import ValidationErrors from "@/Components/ValidationErrors";

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

function TextArea({name, rows, value, isFocused, required, className, autocomplete, handleChange, title}) {
    return (
        <div>
            <Label forInput={name} value={title} className={'form-label'}/>
            <textarea
                name={name}
                value={value}
                autoFocus={isFocused}
                required={required}
                className={clsx([className, 'form-control'])}
                autoComplete={autocomplete}
                onChange={handleChange}
                rows={rows}
            />
        </div>
    )
}

const NewRecipe = ({categories,...rest}) => {
    const {data, setData, post, processing, errors, reset} = useForm({
        title: '',
        category: '',
        photo: '',
        body: '',
    });
    //console.log(categories,rest)
    const onHandleChange = (event) => {
        setData(event.target.name, event.target.type === 'checkbox' ? event.target.checked : event.target.value);
    };

    const submit = (e) => {
        e.preventDefault();
        console.log(data)
        post(route('new_recipe'));
    };

    return (
        <Guest>
            <ValidationErrors errors={errors} />
            <form onSubmit={submit} className={'flex flex-col gap-y-5'}>

                <FormInput name={'title'}
                           title={'Title'}
                           value={data.title}
                           handleChange={onHandleChange}
                           className={'w-full'}
                           isFocused={true}
                />
                <label htmlFor="category" className="form-label">Category</label>
                <select className="form-control form-select-lg "
                        onChange={onHandleChange}
                        value={data.category}
                        name={'category'}
                >
                    <option value={''}>---</option>
                    {categories.map(category=>(
                        <option key={category.name.category_id}
                                value={category.name.category_id}>
                            {category.name.name}
                        </option>
                    ))}
                </select>

                <TextArea name={'body'}
                          title={'Recipe'}
                          value={data.body}
                          handleChange={onHandleChange}
                          className={'w-full'}
                          rows={6}
                />
                <div>
                    <label htmlFor="formFileLg" className="form-label">Large file input example</label>
                    <input className="form-control form-control-lg"
                           name={'photo'}
                           type="file"
                           accept="image/png, image/gif, image/jpeg"
                    />
                </div>
                <div className={'flex justify-end mt-5'}>
                    <Button type="submit" className="btn btn-primary btn-lg">Save</Button>
                    <Button type="button" className="btn btn-danger btn-lg ml-3">Cancel</Button>
                </div>
            </form>
        </Guest>
    );
};

export default NewRecipe;
