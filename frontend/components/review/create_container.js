import { connect } from 'react-redux';
import ReviewForm from './review_form';
import { createReview ,fetchReviews} from "../../actions/review_actions";
import { fetchBusiness } from '../../actions/business_actions';


const mSTP = (state, ownProps) => (
    {   
        currentUser: state.session.id,
        formType: 'Create Review'
    }
)
   


const mDTP = dispatch => ({
    fetchReviews: ()=> dispatch(fetchReviews()),
    fetchBusiness: (id)=>dispatch(fetchBusiness(id)),
    action: review => dispatch(createReview(review)),
});

export default connect(mSTP, mDTP)(ReviewForm);
