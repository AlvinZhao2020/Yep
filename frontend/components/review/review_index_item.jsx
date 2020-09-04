import React from 'react'

class ReviewIndexItem extends React.Component{
    constructor(props){
        super(props)
    }

    showButton(){
        if (this.props.currentUser == this.props.review.author_id)
        return (
            <div className='handle-review-button-location'>
                <button className='review-item-button'>Delete</button>
                <button className='review-item-button'>Edit</button>
            </div>
        )
    }

    render(){
        return(
            <div>
                <div className='review-item-box'>
                    <div className='review-item-author'>
                        <div className='review-item-author-photo-box'>
                            <img className='review-item-author-photo'
                                src="https://active-storage-yep-dev.s3-us-west-1.amazonaws.com/userpic.png" />
                        </div>
                        <div className='item-author-name'>{this.props.author.first_name}&nbsp;{this.props.author.last_name}
                            <div className='review-item-rating'>
                                <div className="review-stars">
                                    <img
                                        className={`star-mid-${this.props.review.rating*2}` + ` star-mid`}
                                        src="https://i.imgur.com/UkZkm0D.png"
                                    ></img>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className='review-item-body'>
                        {this.props.review.body}
                    </div>
                    <div className='review-item-buttons-box'>
                        {this.showButton()}   
                    </div>
                </div>
            </div>
        )
    }
}

export default ReviewIndexItem