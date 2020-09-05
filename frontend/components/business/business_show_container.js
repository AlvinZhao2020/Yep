import { connect } from "react-redux";
import { fetchBusiness,fetchBusinesses } from "../../actions/business_actions";
import BusinessShow from './business_show';
import {fetchReviews} from '../../actions/review_actions'



const mSTP = (state, ownProps) => ({
    business: state.entities.businesses[ownProps.match.params.id],
    reviews: Object.values(state.entities.reviews).filter(
        (review) => review.biz_id == ownProps.match.params.id
    )
})

const mDTP = dispatch => {
    return ({
        fetchBusinesses: ()=>dispatch(fetchBusinesses()),
        fetchBusiness: (id) => dispatch(fetchBusiness(id)),
        fetchReviews: ()=>dispatch(fetchReviews())
    });
};

export default connect(mSTP, mDTP)(BusinessShow);