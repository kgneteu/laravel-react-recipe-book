import React from 'react';
import {Head} from '@inertiajs/inertia-react';
import Layout from "@/Layouts/Layout";
import {Categories} from "@/Components/Categories";
import {LastRecipes} from "@/Components/UI/LastRecipes";

export default function Welcome({categories, recipes}) {
    return (
        <Layout>
            <div className={'flex flex-col w-full'}>
                <Head title="Welcome"/>
                <section className={'relative front-image bg-gray-100'}>

                    <img src={'/images/front3.jpg'} className={'w-full'}/>
                    <span className={'front-text'}>
                        ... not so weak recipes ...
                    </span>
                </section>
                <section className={'dive-in bg-gray-100'}>
                    <div className={'container text-right'}>
                        <h2>Dive in</h2>
                        <Categories categories={categories}/>
                    </div>
                </section>
                <section className={'last-shot bg-gray-100'}>
                    <div className={'container'}>
                        <h2>Last shots</h2>
                        <LastRecipes recipes={recipes}/>
                    </div>
                </section>
            </div>
        </Layout>
    )
}
