import React from 'react';
import Layout from "@/Layouts/Layout";
import {Categories} from "@/Components/Categories";

const RecipeCategories = ({categories}) => {
    return (
        <Layout>
            <div className={'container'}>
                <h1>Recipes</h1>
                <Categories categories={categories}/>
            </div>
        </Layout>
    )
}


export default RecipeCategories;
