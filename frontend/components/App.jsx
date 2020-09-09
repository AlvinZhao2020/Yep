import React from "react";
import { Switch, Route} from "react-router-dom";
import { AuthRoute} from "../util/route_util";
import LoginContainer from './session /login_container'
import SignupContainer from './session /signup_container'
import HomepageContainer from './homepage/homepage_container'
import BusinessIndexContainer from './business/business_index_container'
import ChinesefoodIndex from './business/biz_filter_pages/chinesefood_index'
import BarIndex from './business/biz_filter_pages/bar_index'
import BbqIndex from './business/biz_filter_pages/bbq_index'
import SushiIndex from './business/biz_filter_pages/sushi_index'
import BusinessShowContainer from './business/business_show_container'
import CreateContainer from './review/create_container'
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
      <Route exact path="/businesses/:id" component={BusinessShowContainer}/>
      <Route exact path='/businesses/:id/newRev' component={CreateContainer}/>
    </Switch>
  </div>
);

export default App;
