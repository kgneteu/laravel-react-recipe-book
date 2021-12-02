import Label from "@/Components/UI/Label";
import Input from "@/Components/UI/Input";
import clsx from "clsx";
import React from "react";

export function FormInput({name, type, value, isFocused, required, className, autocomplete, handleChange, title}) {
    return (
        <div>
            <Label forInput={name} value={title} className={'form-label'} />
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
