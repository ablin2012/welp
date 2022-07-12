import React from "react";
import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session/login_form_container';
import SignupFormContainer from './session/signup_form_container';
import SearchContainer from './search/search_container';
import BusinessShowContainer from './business/business_show_container';
import { Route, Switch } from "react-router-dom";
import {AuthRoute, ProtectedRoute} from '../util/route_util';

const App = () => {
    return (
        <div>
            <header>
                <h1>Welp</h1>
                <GreetingContainer />
            </header>
            <Switch>
                <AuthRoute path="/login" component={LoginFormContainer} />
                <AuthRoute path="/signup" component={SignupFormContainer} />
                <Route path="/businesses/:businessId" component={BusinessShowContainer} />
                <Route exact path="/" component={SearchContainer} />
            </Switch>
        </div>
    )
}

export default App;