import React from 'react'
import ReviewIndexItem from './review_index_item'

class ReviewIndex extends React.Component{
    constructor(props){
        super(props)
    }

    render(){
        let reviews=this.props.reviews
        if (this.props.reviews.length === 0) return null;
        return(
            <div>     
                <div>
                    {reviews.map((r,i)=>{
                        let author = Object.assign({},this.props.users[r.author_id])                       
                            return(
                            
                                <ReviewIndexItem 
                                    key={i}
                                    author={author}
                                    review={r} 
                                    currentUser = {this.props.currentUser}
                                    deleteReview ={this.props.deleteReview}
                                />
                      
                            )
                        }
                    )}
                </div> 
            </div>
        )
    }
}

export default ReviewIndex