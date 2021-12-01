import React from 'react';
import clsx from "clsx";

export default function Button({type = 'submit', className = '', variant = '', processing, children}) {
    let variantClass = 'btn text-white p-4 py-2 uppercase rounded-lg';
    switch (variant) {
        case 'secondary':
            variantClass = clsx([variantClass, 'bg-red-700']); break;
        default:
            variantClass = clsx([variantClass, 'bg-gray-700 hover:bg-black']); break;
    }
    return (
        <button type={type} className={clsx([className, variant, processing, variantClass])}
                disabled={processing}
        >
            {children}
        </button>
    );
}
