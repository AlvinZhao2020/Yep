import React from 'react';
import LoginForm from './login_form';
import SignupForm from './signup_form';
import Footer from "../footer/footer";

class SessionForm extends React.Component{
  constructor(props){
    super(props);

    this.state = this.props.signupStatus;

    this.handleClickLogo = this.handleClickLogo.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClickLogo(e){
    e.preventDefault();
    this.props.history.push('/');
  }

  handleClick(boolean) {
    return (e) => {
      e.preventDefault();
      this.setState({signupStatus : boolean});
      this.props.clearErrors();
    }
  }

  render(){  
    
    let {login, signup, errors, clearErrors} = this.props;

    let form = this.state.signupStatus ?
    <SignupForm signup={signup} login={login} errors={errors} clearErrors={clearErrors}></SignupForm> :
    <LoginForm login={login} errors={errors} clearErrors={clearErrors} signup={signup}></LoginForm>
    
    let text = this.state.signupStatus ?
    <div className="login-tiny-text"> Welcome Back! <a onClick={this.handleClick(false)}> Login </a></div> :
    <div className="login-tiny-text"> Join Now! <a onClick={this.handleClick(true)}> SignUp </a></div>
  
    return (
      <div>
        <div>
          <div className="header">
            <a href="/">YEP</a>
          </div>
          <div className="body-container">
            <div className="user-login">
              <div>{form}</div>
              <div>{text}</div>
            </div>
            <div className="session-img"></div>
          </div>
        </div>
        <Footer />
      </div>
    );
  }
}

export default SessionForm;