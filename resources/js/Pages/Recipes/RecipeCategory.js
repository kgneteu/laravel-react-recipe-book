import React from 'react';
import Layout from "@/Layouts/Layout";
import {Link} from "@inertiajs/inertia-react";

function PagerButton({label, href}) {
    switch (label) {
        case "Next &raquo;":
            label = "&raquo";
            break;
        case "&laquo; Previous":
            label = "&laquo;";
            break;
    }
    console.log(label)
    return (
        <Link href={href} className={'pager-button'}>
            <p dangerouslySetInnerHTML={{__html: label}}/>
        </Link>
    )
}

function Pager({links}) {
    return (
        <div className={'pager'}>
            {links && links.map((link, index) => link.url ? (
                    <PagerButton key={index} label={link.label} href={link.url}/>
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
                {recipes && recipes.map(recipe => (
                    <div key={recipe.id} className={'mt-5'}>
                        <h2><Link href={`/recipe/${recipe.id}`}>
                            {recipe.recipe_title.title}
                        </Link></h2>
                        <div className={'flex gap-8'}>
                            <Link href={`/recipe/${recipe.id}`} className={'w-1/2'}>
                                <img src={recipe.photo.file_name}/>
                            </Link>
                            <div className={'w-1/2'}>{recipe.recipe_body.body}</div>
                        </div>
                    </div>
                ))}
                <Pager links={links}/>
            </div>
        </Layout>
    );
};

export default RecipeCategory;
