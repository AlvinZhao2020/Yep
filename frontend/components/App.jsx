import React from "react";
import { Switch, Route} from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import LoginContainer from './session /login_container'
import SignupContainer from './session /signup_container'
import HomepageContainer from './homepage/homepage_container'
import BusinessIndexContainer from './business/business_index_container'
import ChinesefoodIndex from './business/chinesefood_index'
import BarIndex from './business/bar_index'
import BbqIndex from './business/bbq_index'
import SushiIndex from './business/sushi_index'
const App = () => (
  <div>
    <Switch>
      <AuthRoute exact path="/login" component={LoginContainer} />
      <AuthRoute exact path="/signup" component={SignupContainer} />
      <Route exact path="/" component={HomepageContainer} />
      <Route exact path="/businesses" component={BusinessIndexContainer} />
      <Route
        exact
        path="/businesses/chinesefood"
        component={ChinesefoodIndex}
      />
      <Route exact path="/businesses/bar" component={BarIndex} />
      <Route exact path="/businesses/bbq" component={BbqIndex} />
      <Route exact path="/businesses/sushi" component={SushiIndex} />
    </Switch>
  </div>
);

export default App;
