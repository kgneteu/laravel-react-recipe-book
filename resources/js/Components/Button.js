import React from 'react';
import clsx from "clsx";

export default function Button({type = 'submit', className = '', variant = '', processing, children}) {
    let variantClass='btn btn-primary btn-lg';
    switch (variant){
        case 'secondary': variantClass='btn btn-secondary btn-lg'
    }
    return (
        <button type={type} className={clsx([className, variant, processing,variantClass])}
                disabled={processing}
        >
            {children}
        </button>
    );
}
