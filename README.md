[See it live](https://yepclone.herokuapp.com/#/)


## Overview
YepClone is a web app that allows people to find and review businesses,like sushi,
Bar, BBQ in their local communities.And User can see all businesses locations on a map. 
Right now there are 20 businesses in the server database. If an user want to wirte a 
review for a business, this user needs to login or sign up for a new user. 



## Features

### home page

On homepage. There are 
* top nav bar :link to login/log out && click 'write a review' will lead user to businesses
  index page
* search component : Users can search for their favorite kind of businesses. eg. sushi
* categorys component : Clicking anyone of them,user will go to that category page
* footer :Links to developer's github, linkedin 


![Alt Text](https://github.com/AlvinZhao2020/Yelp/blob/master/app/assets/images/readme_gofs/homepageshow.gif)

### Sign UP / LOG IN
User needs to log in before leaving a review for one business, when user logged in
he or she will get a session-token and next time when user opens this app , no more
login needed.A good thing is , if user doesnt want to sign up, just click demoUser 
button,then will login automatically as a demo user.

![Alt Text](https://github.com/AlvinZhao2020/Yelp/blob/master/app/assets/images/readme_gofs/sessionshow.gif)

### Search 

Users can search for their favorite kind of businesses, right now in database 
there is only one city: San Francisco, Input anything that cant not be found ,
will lead user to businesses index page. 

![Alt Text](https://github.com/AlvinZhao2020/Yelp/blob/master/app/assets/images/readme_gofs/searchshow.gif)

### write review

User can write a review if logged in , but if not logged in, there will render an
alert tells user to log in first. After submitting the review form, it will redirect user
to the business show page and the new created review will be rendered . Only the author 
of that review have the right to delete it

![Alt Text](https://github.com/AlvinZhao2020/Yelp/blob/master/app/assets/images/readme_gofs/writereviewshow.gif)

## Code Snippets
below is the code of loginForm presentative component , if sign in with wrong 
credentials, error will be rendered on page.


```javascript
import React from 'react';
import {Link} from "react-router-dom";


const DEMO_USER = { email: "alvin@zhao.com", password: "123456" } 


class LoginForm extends React.Component{
  constructor(props){
    super(props);

    this.state = {email: '', password: ''};
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemoClick = this.handleDemoClick.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  update(field){
    return e => this.setState({
      [field]: e.target.value
    });
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.login(this.state);
  }

  handleClick(){
    this.props.clearErrors();
  }

  handleDemoClick(e){
    e.preventDefault();
    this.props.login(DEMO_USER);
  }

  render(){
    let errors;
    if (this.props.errors.length) {
      errors = this.props.errors.map((error,i) => (
        <li key={i}>{error}</li>
      ));
    }

    return <div>
        <div className="login-container">
          <h2 className='title'>Log In to YEP</h2>
          <div className="login-subheading">
            Sign In Later ? <Link className="signup-link" to="/" onClick={this.handleClick}>
              Home Page
            </Link>
          </div>
          <div className="legal">
            By logging in, you agree to YEP’s Terms of Service and Privacy
            Policy.
          </div>
          <div className="demo-button" onClick={this.handleDemoClick}>
            Demo User
          </div>
          <div>
            <fieldset className="login-separator hr-line">
              <legend align="center" className="or-separator" >OR</legend>
            </fieldset>
          </div>
          <form onSubmit={this.handleSubmit}>
            <label>
              <input className="session-input-boxes" type="email" placeholder="Email" value={this.state.email} onChange={this.update("email")} />
            </label>
            <label>
              <input className="session-input-boxes" type="password" placeholder="Password" value={this.state.password} onChange={this.update("password")} />
            </label>
            <div className="forgot-link-div">
              <a className="forgot-link no-drop" >
                Forgot Password?
              </a>
            </div>
            <input className="login-button" type="submit" value="Log In" />
            <div className="session-errors-parent">
              <div className="session-errors">{errors}</div>
            </div>
          </form>
        </div>
      </div>;
  }
}

export default LoginForm;


```

## Functionality and MVP
- [ ] User auth. Login and sign up.
- [ ] Users can view a list of businesses in their local area with detailed information
- [ ] Logged in users can create and delete their own reviews 
- [ ] All business are filtered by categories, and user can search categories
- [ ] using Google map API to show business locations on map
- [ ] using AWS to store business pics


## Technologies
* Backend - Rails, Ruby, postgresql.
* Frontend - React, Redux, JavaScript, CSS, HTML.
* API - Google Map API , AWS S3 API 
* Using Heroku for live show .
* Using uptimerobot to keep Yepclone aweak.


