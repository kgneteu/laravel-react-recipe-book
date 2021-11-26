import React from 'react';
import {Head} from '@inertiajs/inertia-react';
import Layout from "@/Layouts/Layout";

export default function Welcome(props) {
    //console.log(props)
    return (
        <Layout>
            <div className={'container flex flex-col'}>
                <Head title="Welcome"/>
                <section>
                    <h1>Hello</h1>
                </section>
            </div>
        </Layout>
    )
}
