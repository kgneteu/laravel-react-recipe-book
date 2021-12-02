import {Link} from "@inertiajs/inertia-react";
import React from "react";

export const Categories = ({categories}) => (
    <div className={"recipe-categories-wrapper"}>
        {categories.map(category => (
            <div className={'recipe-categories-box'}  key={category.id}>
                <div className={'recipe-categories-box-inner'}>
                    <Link href={`/recipes/${category.id}`}>
                            <img src={`/images/categories/${category.id}.jpg`}
                                 title={category.name.name}
                                 alt={category.name.name}/>
                            <span className={'image-inner-title'}>{category.name.name}</span>
                    </Link>
                </div>
            </div>
        ))}
    </div>);
