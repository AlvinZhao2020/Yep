import React from "react";
import { Switch, Route} from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import LoginContainer from './session /login_container'
import SignupContainer from './session /signup_container'
const App = () => (
  <div>
    <Switch>
      <Route exact path="/login" component={LoginContainer} />
      <Route exact path="/signup" component={SignupContainer} />
    </Switch>
  </div>
);

export default App;
