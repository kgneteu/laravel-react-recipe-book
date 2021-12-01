import {Link} from "@inertiajs/inertia-react";
import React from "react";

export const LastRecipes = ({recipes}) => {
    console.log(recipes)
    return (
        <div className={"recipe-categories-wrapper"}>
            {recipes.map(recipe => (
                <div className={'recipe-categories-box'}  key={recipe.id}>
                    <div className={'recipe-categories-box-inner'}>
                        <Link href={`/recipe/${recipe.id}`}>
                            <div>
                                <img src={`${recipe.photo.file_name}`}
                                     alt={recipe.recipe_title.title}
                                />
                                <h2 className={'absolute text-white-800 z-10 top-8 left-8'}>{recipe.recipe_title.title}</h2>
                            </div>
                        </Link>
                    </div>
                </div>
            ))}
        </div>
    );
}
