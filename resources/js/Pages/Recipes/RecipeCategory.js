import React from 'react';
import Layout from "@/Layouts/Layout";
import {Link} from "@inertiajs/inertia-react";
import {RecipeImage} from "@/Components/UI/RecipeImage";
import clsx from "clsx";

function PagerButton({label, href, active}) {
    switch (label) {
        case "Next &raquo;":
            label = "&raquo";
            break;
        case "&laquo; Previous":
            label = "&laquo;";
            break;
    }

    return (
        <Link href={href} className={clsx(['pager-button', active ? 'active' : null])}>
            <p dangerouslySetInnerHTML={{__html: label}}/>
        </Link>
    )
}

function Pager({links}) {
    console.log(links)
    return (
        <div className={'pager'}>
            {links && links.map((link, index) => link.url ? (
                    <PagerButton key={index} label={link.label} href={link.url} active={link.active}/>
                ) : null
            )}
        </div>
    )
}

const RecipeCategory = ({page, category}) => {
    const recipes = page.data;
    const links = page.links;
    return (
        <Layout>
            <div className={'container flex flex-col'}>
                <h1>{category.name.name}</h1>
                <div className={'mt-16'}>
                    {recipes && recipes.map(recipe => (
                        <div key={recipe.id} className={'mb-8'}>
                            <h2><Link href={`/recipe/${recipe.id}`}>
                                {recipe.recipe_title.title}
                            </Link></h2>
                            <div className={'flex flex-wrap mt-4'}>
                                <Link href={`/recipe/${recipe.id}`}
                                      className={'w-full mb-4 lg:w-1/2 recipe-image-wrapper'}>
                                    <RecipeImage src={recipe?.photo?.file_name} className={"recipe-list-image"}/>
                                </Link>
                                <div className={'w-full lg:w-1/2 lg:pl-8'}>{recipe?.recipe_body?.body}</div>
                            </div>
                        </div>
                    ))}
                </div>
                <Pager links={links}/>
            </div>
        </Layout>
    );
};

export default RecipeCategory;
