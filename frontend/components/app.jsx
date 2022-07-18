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
import { Route, Switch, Link} from "react-router-dom";
import {AuthRoute, ProtectedRoute} from '../util/route_util';

const App = () => {
    return (
        <div>
            <header className="header">
                <Link to="/" ><img src={window.logoUrl}/></Link>
                <SearchBarContainer />
                <GreetingContainer />
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
        </div>
    )
}

export default App;