import { connect } from "react-redux";
import { fetchBusiness} from "../../actions/business_actions";
import BusinessShow from './business_show';
import {fetchReviews} from '../../actions/review_actions'
import {fetchAllUsers} from '../../actions/user_actions'


const mSTP = (state, ownProps) => ({
    business: state.entities.businesses[ownProps.match.params.id],
    reviews: Object.values(state.entities.reviews).filter(
        (review) => review.biz_id == ownProps.match.params.id
    ),
    users: state.entities.users
})

const mDTP = dispatch => {
    return ({
        fetchBusiness: (id) => dispatch(fetchBusiness(id)),
        fetchReviews: ()=>dispatch(fetchReviews()),
        fetchAllUsers:()=>dispatch(fetchAllUsers())
    });
};

export default connect(mSTP, mDTP)(BusinessShow);