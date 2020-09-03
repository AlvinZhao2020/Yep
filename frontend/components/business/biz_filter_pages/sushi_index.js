import { connect } from "react-redux";
import { fetchBusinesses } from "../../../actions/business_actions";
import { sushi } from "../../../reducers/category_selector";
import BusinessIndex from "../business_index";


const mSTP = (state) => {
  return {
    businesses: sushi(state),
  };
};

const mDTP = (dispatch) => {
  return {
    fetchBusinesses: () => dispatch(fetchBusinesses()),
  };
};

export default connect(mSTP, mDTP)(BusinessIndex);
