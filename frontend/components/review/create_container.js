import { connect } from 'react-redux';
import ReviewForm from './review_form';
import { createReview } from "../../actions/review_actions";

const mSTP = (state) => (
    {   
        currentUser: state.session.id,
        formType: 'Create Review'
    }
)
   
const mDTP = dispatch => ({
    action: review => dispatch(createReview(review)),
});

export default connect(mSTP, mDTP)(ReviewForm);
