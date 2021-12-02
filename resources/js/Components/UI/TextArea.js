import Label from "@/Components/UI/Label";
import clsx from "clsx";
import React from "react";

export function TextArea({name, rows, value, isFocused, required, className, autocomplete, handleChange, title}) {
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
