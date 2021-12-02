import classes from './mobileMenu.module.scss';
import {Link, usePage} from "@inertiajs/inertia-react";

function HeaderLink({title, link, method = 'get'}) {
    return (
        <li className={classes.navigation_item}>
            <Link href={link} className={classes.navigation_link} method={method}>
                <span>&nbsp;</span>
                {title}
                <span>&nbsp;</span>
            </Link>
        </li>);
}

const MobileMenu = () => {
    const {auth} = usePage().props;
    return (
        <div className={classes.mobileMenu} id={"mobile-menu"}>
            <input type="checkbox" className={classes.menuCheckbox} id="navi-toggle"/>
            <label htmlFor="navi-toggle" className={classes.menuButton}>
                <span className={classes.menuIcon}>&nbsp;</span>
            </label>
            <div className={classes.background}>&nbsp;</div>
            <nav className={classes.navigation_nav}>
                <ul className={classes.navigation_list}>
                    <HeaderLink title={'Home'} link={"/"}/>
                    <HeaderLink title={'Add recipe'} link={route("new_recipe")}/>
                    <HeaderLink title={'Recipes'} link={route("recipes")}/>
                    {auth.user ? (
                        <>
                            <HeaderLink title={'Dashboard'} link={route('dashboard')}/>
                            <HeaderLink title={'Logout'} link={route('logout')} method={'post'}/>
                        </>
                    ) : (
                        <>
                            <HeaderLink title={'Login'} link={route('login')}/>
                            <HeaderLink title={'Register'} link={route('register')}/>
                        </>
                    )}
                </ul>
            </nav>
        </div>
    );
};

export default MobileMenu;
