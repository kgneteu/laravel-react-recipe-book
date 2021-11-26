import React from 'react';
import Layout from "@/Layouts/Layout";

export default function Guest({children}) {
    //min-h-full h-full flex flex-col sm:justify-center items-center pt-6 sm:pt-0
    return (
        <Layout>
            <div className="w-full flex flex-col bg-gray-100 justify-center items-center">
                <div className="w-full sm:max-w-md mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
                    {children}
                </div>
            </div>
        </Layout>
    );
}
