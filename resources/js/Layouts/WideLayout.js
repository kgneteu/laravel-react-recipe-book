import React from 'react';
import clsx from "clsx";
import Layout from "@/Layouts/Layout";


function DialogBox({children, size}) {
    return (<div className={clsx(["dialog-box", size])}>
        {children}
    </div>);
}

export default function WideLayout({children, title}) {
    return (
        <Layout>
            <div className="w-full flex flex-col justify-center items-center">
                <h1>{title}</h1>
                <DialogBox children={children} size={"wide"}/>
            </div>
        </Layout>
    );
}
