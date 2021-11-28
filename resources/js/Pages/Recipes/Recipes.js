import React from 'react';
import Layout from "@/Layouts/Layout";
import {Link} from "@inertiajs/inertia-react";

const Recipes = ({categories}) => {
    console.log(categories)
    return (
        <Layout>
            <div className={'container mt-5 flex flex-wrap'}>
                {categories && categories.map(
                    category => (
                        <Link href={`/recipes/${category.id}`} key={category.id} className={'w-1/2 border-1 shadow-md'}>
                            <div>
                                <h2>{category.name.name}</h2>
                            </div>
                        </Link>
                    )
                )}
            </div>
        </Layout>
    );
};

export default Recipes;
