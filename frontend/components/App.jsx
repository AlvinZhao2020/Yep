import React from "react";
import { Switch, Route} from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import LoginContainer from './session /login_container'
import SignupContainer from './session /signup_container'
import HomepageContainer from './homepage/homepage_container'
import BusinessIndexContainer from './business/business_index_container'
const App = () => (
  <div>
    <Switch>
      <AuthRoute exact path="/login" component={LoginContainer} />
      <AuthRoute exact path="/signup" component={SignupContainer} />
      <Route exact path="/" component={HomepageContainer} />
      <Route exact path="/businesses" component={BusinessIndexContainer} />
    </Switch>
  </div>
);

export default App;
