import { connect } from "react-redux";
import {  logout, clearErrors } from "../../actions/session_actions";
import Header from "./header";

const mSTP = (state) => {
  return {
    currentUser: state.session.id,
  };
};

const mDTP = (dispatch) => {
  return {
    login: (user) => dispatch(login(user)),
    logout: () => dispatch(logout()),
    clearErrors: () => dispatch(clearErrors()),
  };
};

export default connect(mSTP, mDTP)(Header);
