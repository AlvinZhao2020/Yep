import { connect } from "react-redux";
import { login, signup, clearErrors } from "../../actions/session_actions";
import SessionForm from './session_form';

const mSTP = state => {
  return ({
    signupStatus: {signupStatus: false},
    errors: state.errors.session
  });
};

const mDTP = dispatch => {
  return ({
    login: (user) => dispatch(login(user)),
    signup: (user) => dispatch(signup(user)),
    clearErrors: () => dispatch(clearErrors()),
  });
};

export default connect(mSTP, mDTP)(SessionForm);