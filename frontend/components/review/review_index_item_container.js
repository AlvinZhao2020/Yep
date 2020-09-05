import {connect} from 'react-redux'
import ReviewIndexItem from './review_index_item'
import { deleteReview} from '../../actions/review_actions'

const mSTP =(state,ownprops)=>({
    author: state.entities.users[ownprops.review.author_id]
})

const mDTP =dispatch=>({
    deleteReview: (reviewId)=>dispatch(deleteReview(reviewId))
})

export default connect(mSTP,mDTP)(ReviewIndexItem)