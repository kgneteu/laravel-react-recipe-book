import React from 'react';
import {Head} from '@inertiajs/inertia-react';
import Layout from "@/Layouts/Layout";

export default function Welcome(props) {
    //console.log(props)
    return (
        <Layout>
            <div className={'flex flex-col w-full'}>
                <Head title="Welcome"/>
                <section className={'relative front-image'}>
                    <img src={'/images/front3.jpg'} className={'w-full'}/>
                    <span className={'front-text'}>
                        not so weak recipes...
                    </span>
                </section>
                <section className={'dive-in bg-blue-500'}>
                    <h2>DiveInto</h2>
                </section>
                <section className={'last-shot bg-red-500'}>
                    <h2>Last shot</h2>
                </section>
            </div>
        </Layout>
    )
}
