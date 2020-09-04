import { connect } from "react-redux";
import { fetchBusiness } from "../../actions/business_actions";
import BusinessShow from './business_show';


const mSTP = (state, ownProps) => ({
    business: state.entities.businesses[ownProps.match.params.id],
    
})

const mDTP = dispatch => {
    return ({
        fetchBusiness: (id) => dispatch(fetchBusiness(id)),
    });
};

export default connect(mSTP, mDTP)(BusinessShow);