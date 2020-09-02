import {connect} from 'react-redux';
import {logout} from '../../actions/session_actions';
import { fetchBusinesses } from "../../actions/business_actions";
import HomePage from './homepage'

const mSTP = (state) => ({
  currentUser: state.entities.users[state.session.id],
  businesses: Object.values(state.entities.businesses),
});

const mDTP = (dispatch) => ({
  logout: () => dispatch(logout()),
  fetchBusinesses: () => dispatch(fetchBusinesses()),
});

export default connect(mSTP, mDTP)(HomePage);