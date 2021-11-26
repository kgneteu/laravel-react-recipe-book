import {Header} from "@/Components/header";
import React, {useEffect} from "react";
import Footer from "@/Layouts/Footer";
import {usePage} from "@inertiajs/inertia-react";
import {toast, ToastContainer} from "react-toastify";

export default function Layout({children}) {
    const pageProps = usePage().props;
    useEffect(()=>{
        if (pageProps?.flash.success || pageProps?.flash.error) {
            if (pageProps?.flash.success) {
                toast.success(pageProps.flash.success);
            } else {
                toast.error(pageProps.flash.error);
            }

        }
    },[pageProps])

    return (
        <div className={'min-h-screen flex flex-col'}>
            <Header/>
            <div className={'flex-grow flex flex items-stretch'}>
                {children}
            </div>
            <ToastContainer
                position="bottom-right"
                autoClose={5000}
                hideProgressBar={false}
                newestOnTop={false}
                closeOnClick
                rtl={false}
                pauseOnFocusLoss
                draggable
                pauseOnHover
            />
            <Footer/>
        </div>
    );
}
