import React from 'react';
import Layout from "@/Layouts/Layout";
import {Link} from "@inertiajs/inertia-react";

const RecipeCategories = ({categories}) => {
    console.log(categories)
    return (
        <Layout>
            <div className={'container'}>
                <h1>Recipes</h1>
                <div className={'recipe-categories-wrapper'}>
                    {categories && categories.map(
                        category => (
                            <div className={'recipe-categories-box'}>
                                <div className={'recipe-categories-box-inner'}>
                                    <Link href={`/recipes/${category.id}`}
                                          key={category.id}>
                                        <div>
                                            <img src={`/images/categories/${category.id}.jpg`}
                                                 title={category.name.name}
                                                 alt={category.name.name}/>
                                            <h2 className={'absolute text-white-800 z-10 top-8 left-8'}>{category.name.name}</h2>
                                        </div>
                                    </Link>
                                </div>
                            </div>
                        ))}
                </div>
            </div>
        </Layout>
    )
}


export default RecipeCategories;
