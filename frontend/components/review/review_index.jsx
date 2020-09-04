import React from 'react'
import ReviewIndexItemContainer from './review_index_item_container'

class ReviewIndex extends React.Component{
    constructor(props){
        super(props)
    }
   
    render(){
        let reviews=this.props.reviews
        return(
            <div>
                <div className='review-item-box'> 
                    <div className='review-item-author'>
                        <div className='review-item-author-photo-box'>
                            <img className='review-item-author-photo'
                                src="https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/userpic.png" />
                        </div>
                        <div className='item-author-name'>TomCat(hardCodeForCSS)
                            <div className='review-item-rating'>
                                <div className="review-stars">
                                    <img
                                        className={`star-mid-8` + ` star-mid`}
                                        src="https://i.imgur.com/UkZkm0D.png"
                                    ></img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className='review-item-body'>
                        last Monday ,I and my friends came to this place for lunch. we tried some yummy foods here, and I will recommend BoBa teaa here!!
                        last Monday ,I and my friends came to this place for lunch. we tried some yummy foods here, and I will recommend BoBa teaa here!!
                        last Monday ,I and my friends came to this place for lunch. we tried some yummy foods here, and I will recommend BoBa teaa here!!
                    </div>
                    <div className='review-item-buttons-box'>
                        <div className='handle-review-button-location'>
                            <button className='review-item-button'>Delete</button>
                            <button className='review-item-button'>Edit</button>
                        </div>
                    </div>
                </div>
                <div>
                    {reviews.map((r,i)=>
                    (
                        <ReviewIndexItemContainer key={i} review={r} currentUser = {this.props.currentUser}/>
                    ))}
                </div> 
            </div>
        )
    }
}

export default ReviewIndex