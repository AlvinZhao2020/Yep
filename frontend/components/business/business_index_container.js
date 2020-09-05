import {connect} from 'react-redux'
import {fetchBusinesses} from '../../actions/business_actions'
import {fetchAllUsers} from '../../actions/user_actions'
import BusinessIndex from './business_index'

const mSTP = (state) => {
    return{businesses: Object.values(state.entities.businesses),}
    };

const mDTP = dispatch=>({
    fetchBusinesses: ()=>dispatch(fetchBusinesses()),
    fetchAllUsers: ()=>dispatch(fetchAllUsers())
})

export default connect(mSTP,mDTP)(BusinessIndex)
