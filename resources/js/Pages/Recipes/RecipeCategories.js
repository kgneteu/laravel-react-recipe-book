import React from 'react';
import Layout from "@/Layouts/Layout";
import {Categories} from "@/Components/Categories";

const RecipeCategories = ({categories}) => {
    return (
        <Layout>
            <div className={'container'}>
                <h1>Recipes</h1>
                <div className={'my-16'}>
                    <Categories categories={categories}/>
                </div>
            </div>
        </Layout>
    )
}


export default RecipeCategories;
