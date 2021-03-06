import React from 'react';
import Layout from "@/Layouts/Layout";

function DialogBox(props) {
    return (<div className="dialog-box">
        {props.children}
    </div>);
}

export default function Guest({children, title}) {
    //min-h-full h-full flex flex-col sm:justify-center items-center pt-6 sm:pt-0
    return (
        <Layout>
            <div className="w-full flex flex-col justify-center items-center">
                <h1>{title}</h1>
                <DialogBox children={children}/>
            </div>
        </Layout>
    );
}
