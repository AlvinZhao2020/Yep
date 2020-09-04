import {connect} from 'react-redux'
import ReviewIndexItem from './review_index_item'


const mSTP =(state,ownprops)=>({
    author: state.entities.users[ownprops.review.author_id]
})

const mDTP =dispatch=>({})

export default connect(mSTP,null)(ReviewIndexItem)