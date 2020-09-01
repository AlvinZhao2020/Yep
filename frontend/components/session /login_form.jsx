import React from 'react';
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";


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
            New to YEP? <Link className="signup-link" to="/signup" onClick={this.handleClick}>
              Sign up
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

