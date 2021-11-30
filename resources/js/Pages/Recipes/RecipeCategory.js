import React from 'react';
import Layout from "@/Layouts/Layout";
import {Link} from "@inertiajs/inertia-react";

function PagerButton({label, href}) {
    return (
        <Link href={href} className={'pager-button'}>
            <div dangerouslySetInnerHTML={{ __html: label }}/>
        </Link>
    )
}

function Pager({links}) {
    return (
        <div className={'flex justify-center gap-2 my-4'}>
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
                        <h2>{recipe.recipe_title.title}</h2>
                        <div className={'flex gap-8'}>
                            <img className={'w-1/2'} src={recipe.photo.file_name}/>
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