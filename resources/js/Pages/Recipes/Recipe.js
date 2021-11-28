import React from 'react';
import Layout from "@/Layouts/Layout";

const Recipe = ({recipe}) => {
    console.log(recipe)
    // const [recipe_item] = recipe;

    // console.log(recipe_item)
    return (
        <Layout>
            {recipe && (
                <div className={'container'}>
                    <h1>{recipe.recipe_title.title}</h1>
                    <p>{recipe.recipe_body.body}</p>
                </div>
            )}
            {!recipe && (
                <div className={'container text-center mt-64 text-red-500'}>
                    <h1>This recipe does not exist!</h1>
                </div>
            )}
        </Layout>
    );
};

export default Recipe;
