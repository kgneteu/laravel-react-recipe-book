import React from 'react';
import {useForm} from "@inertiajs/inertia-react";
import Button from "@/Components/UI/Button";
import ValidationErrors from "@/Components/ValidationErrors";
import WideLayout from "@/Layouts/WideLayout";
import {TextArea} from "@/Components/UI/TextArea";
import {FormInput} from "@/Components/UI/FormInput";
import Label from "@/Components/UI/Label";
import {ImageUpload} from "@/Components/UI/ImageUpload";

const NewRecipe = ({categories, ...rest}) => {
    const {data, setData, post, processing, errors, reset, progress} = useForm({
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
        post(route('new_recipe_post'));
    };

    return (
        <WideLayout title={"New recipe"}>
            <ValidationErrors errors={errors}/>
            <form onSubmit={submit} className={'flex flex-col gap-y-5'}>

                <FormInput name={'title'}
                           title={'Title'}
                           value={data.title}
                           handleChange={onHandleChange}
                           className={'w-full'}
                           isFocused={true}
                />
                <div>
                    <Label htmlFor="category" className="form-label">Category</Label>
                    <select className="form-control form-select-lg w-full"
                            onChange={onHandleChange}
                            value={data.category}
                            name={'category'}
                    >
                        <option value={''}>---</option>
                        {categories.map(category => (
                            <option key={category.name.category_id}
                                    value={category.name.category_id}>
                                {category.name.name}
                            </option>
                        ))}
                    </select>
                </div>
                <TextArea name={'body'}
                          title={'Recipe'}
                          value={data.body}
                          handleChange={onHandleChange}
                          className={'w-full'}
                          rows={6}
                />
                <ImageUpload onChange={e => setData('photo', e.target.files[0])} name="photo" title="Photo"
                             className={'w-full'}/>
                <div className={'flex justify-end mt-5'}>
                    <Button type="submit" className="btn btn-primary btn-lg">Save</Button>
                </div>
                {progress && (
                    <progress value={progress.percentage} max="100" className={'w-full'}>
                        {progress.percentage}%
                    </progress>
                )}
            </form>
        </WideLayout>
    );
};

export default NewRecipe;
