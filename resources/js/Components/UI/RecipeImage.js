import React from "react";

export function RecipeImage({src, alt, title,className=""}) {
    let randImg = Math.floor(Math.random() * 9) + 1;
    if (src && src !== "") {
        return (<img src={src} alt={alt} className={className}/>)
    } else {
        return (<img src={`/images/seed/1/${randImg}.jpg`} alt={alt} className={className}/>)
    }
}
