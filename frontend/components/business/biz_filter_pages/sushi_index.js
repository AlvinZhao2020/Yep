import { connect } from "react-redux";
import { fetchBusinesses } from "../../../actions/business_actions";
import { sushi } from "../../../reducers/category_selector";
import BusinessIndex from "../business_index";
import { fetchAllUsers } from '../../../actions/user_actions'


const mSTP = (state) => {
  return {
    businesses: sushi(state),
  };
};

const mDTP = (dispatch) => {
  return {
    fetchBusinesses: () => dispatch(fetchBusinesses()),
    fetchAllUsers: () => dispatch(fetchAllUsers())
  };
};

export default connect(mSTP, mDTP)(BusinessIndex);
