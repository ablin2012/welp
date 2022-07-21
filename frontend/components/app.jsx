import React from "react";
import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session/login_form_container';
import SignupFormContainer from './session/signup_form_container';
import SearchContainer from './search/search_container';
import BusinessShowContainer from './business/business_show_container';
import CreateReviewFormContainer from './reviews/create_review_form_container';
import EditReviewFormContainer from './reviews/edit_review_form_container';
import SearchBarContainer from './search/search_bar_container';
import SplashPageContainer from './splash/splash_page_container';
import { Route, Switch, Link, useLocation} from "react-router-dom";
import {AuthRoute, ProtectedRoute} from '../util/route_util';

const App = () => {
    const { pathname } = useLocation();
    let inlineStyle = {};
    let logo;
    if (pathname === "/") {
        inlineStyle = {
            backgroundColor: 'rgba(0, 0, 0, 0.35)', 
            position: 'absolute', 
            border: 'none',
            top: 0,
            left: 0
        };
        logo = window.whiteLogoUrl;
    } else {
        logo = window.logoUrl;
    }
    return (
        <div>
            <header className="header" style={inlineStyle}>
                <div className="header-left" >
                    <Link to="/" ><img className="logo" src={logo}/></Link>
                    <SearchBarContainer />
                </div>
                <div className="header-right">
                    <GreetingContainer />
                </div>
            </header>
            <Switch>
                <AuthRoute path="/login" component={LoginFormContainer} />
                <AuthRoute path="/signup" component={SignupFormContainer} />
                <Route exact path="/businesses/:businessId" component={BusinessShowContainer} />
                <ProtectedRoute exact path="/businesses/:businessId/reviews/new" component={CreateReviewFormContainer} />
                <ProtectedRoute exact path="/reviews/:reviewId/edit" component={EditReviewFormContainer} />
                <Route exact path="/search" component={SearchContainer} />
                <Route exact path="/" component={SplashPageContainer} />
            </Switch>
            <footer className="footer">
                <div className="footer-column">
                    <h3>About</h3>
                    <a className="footer-link" href="https://www.linkedin.com/feed/">LinkedIn</a>
                </div>
                <div className="footer-column">
                    <h3>Discover</h3>
                    <a className="footer-link" href="https://github.com/ablin2012">GitHub</a>
                </div>
                <div className="footer-column">
                    <h3>Adam for Business</h3>
                    <a className="footer-link" href="mailto:adamlin.2009@gmail.com@gmail.com?subject=Let's Talk About a Job!">Email</a>
                </div>
            </footer>
        </div>
    )
}

export default App;