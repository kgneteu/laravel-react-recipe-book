import {Link, usePage} from "@inertiajs/inertia-react";
import React from "react";

export function Header() {
    const {auth} = usePage().props;
    return (
        <header className="flex justify-end mb-16">
            <div className="menu-wrapper">
                <Link href={'/'} className="menu-logo"><img src={'/images/logo.svg'}/></Link>
                <Link href={'/recipe/create'} className="menu-item mr-8"><span
                    className={"text-red-700 font-black"}>+</span>Add recipe</Link>
                <Link href={'/'} className="menu-item">Home</Link>
                <Link href={route('recipes')} className="menu-item">Recipes</Link>
                {auth.user ? (
                    <>
                        <Link href={route('dashboard')} className="menu-item">Dashboard</Link>
                        <Link href={route('logout')} className="menu-item" method="post" as="button">Logout</Link>
                    </>
                ) : (
                    <>
                        <Link href={route('login')} className="menu-item">Login</Link>
                        <Link href={route('register')} className="menu-item">Register</Link>
                    </>
                )}
            </div>
        </header>);
}

