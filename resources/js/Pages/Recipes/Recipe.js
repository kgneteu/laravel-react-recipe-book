import React from 'react';
import Layout from "@/Layouts/Layout";
import {RecipeImage} from "@/Components/UI/RecipeImage";
import {Link} from "@inertiajs/inertia-react";

const Recipe = ({recipe}) => {
    return (
        <Layout>
            <div className={'mb-16 container'}>
                {recipe && (
                    <div>
                        <h1><Link href={`/recipes/${recipe.category_id}`}>{recipe.category.name.name}</Link></h1>
                        <div className={'mt-16'}>
                            <p className={"h2"}>{recipe.recipe_title.title}</p>
                            <div className={'flex flex-wrap mt-4'}>
                                <RecipeImage src={recipe?.photo?.file_name} className={'w-full mb-8 lg:w-1/2'}/>
                                <p className={'w-full lg:w-1/2 lg:pl-8'}>{recipe.recipe_body.body}</p>
                            </div>
                        </div>
                    </div>
                )}
                {!recipe && (
                    <div className={'container text-center mt-64 text-red-500'}>
                        <h1>This recipe does not exist!</h1>
                    </div>
                )}
            </div>
        </Layout>
    );
};

export default Recipe;
