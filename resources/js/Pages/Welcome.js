import React from 'react';
import {Head} from '@inertiajs/inertia-react';
import {Header} from "@/Components/header";

function Footer() {
    return (
        <footer className={'row'}>
            <p> (C) 2021 by Michael Zdolski </p>
        </footer>
    )
}

export default function Welcome(props) {
    console.log(props)
    return (
        <>
            <Header auth={props.auth}/>
            <div className={'container flex flex-col'}>
                <Head title="Welcome"/>
                <section>
                    <h1>Hello!!!</h1>
                </section>
                <Footer/>
            </div>
        </>
    )
}
