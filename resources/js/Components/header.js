import {Link, usePage} from "@inertiajs/inertia-react";
import React from "react";

export function Header() {
    const {auth} = usePage().props;
    return (
        <header className="flex bg-blue-500 justify-end">
            <div className="px-6 py-4 sm:block">
                <Link href={'/'} className="mr-4 text-sm text-gray-700 uppercase">
                    Home
                </Link>
                {auth.user ? (
                    <Link href={route('dashboard')} className="text-sm text-gray-700 uppercase">
                        Dashboard
                    </Link>
                ) : (
                    <>
                        <Link href={route('login')} className="text-sm text-gray-700 uppercase">
                            Log in
                        </Link>

                        <Link href={route('register')} className="ml-4 text-sm text-gray-700 uppercase">
                            Register
                        </Link>
                    </>
                )}
            </div>
        </header>);
}

