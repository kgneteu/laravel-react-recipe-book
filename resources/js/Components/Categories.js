import {Link} from "@inertiajs/inertia-react";
import React from "react";

export const Categories = ({categories}) => (
    <div className={"recipe-categories-wrapper"}>
        {categories.map(category => (
            <div className={'recipe-categories-box'}  key={category.id}>
                <div className={'recipe-categories-box-inner'}>
                    <Link href={`/recipes/${category.id}`}>
                        <div>
                            <img src={`/images/categories/${category.id}.jpg`}
                                 title={category.name.name}
                                 alt={category.name.name}/>
                            <h2 className={'absolute text-white-800 z-10 top-8 left-8 font-outlined'}>{category.name.name}</h2>
                        </div>
                    </Link>
                </div>
            </div>
        ))}
    </div>);
