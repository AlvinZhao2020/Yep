import {connect} from 'react-redux'
import ReviewIndex from './review_index'
import {fetchReviews} from '../../actions/review_actions'
 


const mSTP = (state,ownProps)=>(
    {   
        currentUser: state.session.id,
        
    }
) 


const mDTP = dispatch=>({
    fetchReviews: ()=>dispatch(fetchReviews()),
})

export default connect(mSTP,mDTP)(ReviewIndex)