import {Link} from "@inertiajs/inertia-react";
import React from "react";
import {RecipeImage} from "@/Components/UI/RecipeImage";

export const LastRecipes = ({recipes}) => {
    console.log(recipes)
    return (
        <div className={"recipe-categories-wrapper"}>
            {recipes.map(recipe => (
                <div className={'recipe-categories-box'}  key={recipe.id}>
                    <div className={'recipe-categories-box-inner'}>
                        <Link href={`/recipe/${recipe.id}`}>
                                <RecipeImage src={recipe?.photo?.file_name} alt={recipe?.recipe_title?.title}/>
                                <span className={'image-inner-title'}>
                                    {recipe?.recipe_title?.title}
                                </span>
                        </Link>
                    </div>
                </div>
            ))}
        </div>
    );
}
