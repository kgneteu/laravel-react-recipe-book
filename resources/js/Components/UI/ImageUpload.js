import Label from "@/Components/UI/Label";
import React from "react";

export function ImageUpload({onChange, name, title, className}) {
    return (
        <div className={className}>
            <Label htmlFor="formFileLg" className="form-label">{title}</Label>
            <input className="image-upload"
                   id={name}
                   name={name}
                   accept="image/png, image/gif, image/jpeg"
                   onChange={onChange}
                   type="file"/>
        </div>);
}
