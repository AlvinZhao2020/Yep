import React from "react";
import { Link } from "react-router-dom";

class BusinessIndexItem extends React.Component {
  render() {
    let {category,photoUrls,id,biz_name,price,phone_number,
      address,city,business_info,rating,} = this.props.business;
    let ItemRating = rating*2
    return (
      <div>
        <Link to={`/businesses/${id}`}>
        <li className="business-index-item-box">
          
          <div className="business-index-item-skeleton-box">
            
            <div className="business-index-item-photo">
              <img src={photoUrls[0]} />
            </div>
            <div className="business-index-item-info-box">
              <div className="business-index-item-info-top">
                <div className="business-index-item-info-top-left">
                  <div className="business-index-item-bizname">
                    {biz_name}
                  </div>
                  <div className='review-stars'>
                    <img
                      className={`star-mid-${ItemRating}` + ` star-mid`}
                      src="https://i.imgur.com/UkZkm0D.png"
                    ></img>
                  </div>
                  <div className="price-icon">COST:{price}</div>
                </div>
                <div className="business-index-item-info">
                  <ul>
                    <li>
                     {city}
                    </li>
                    <li>
                      {category}
                    </li>
                    <li>
                      <i className="fas fa-phone-square-alt"></i> {phone_number}
                    </li>
                    <li>
                      <i className="fas fa-map-marker-alt"></i> {address}
                    </li>
                  </ul>
                </div>
              </div>
              <div className="business-description-box">
                "{business_info}"
              </div>
             
              <div className='review-button-box'>
                <Link to={`/businesses/${id}/newRev`}>
                  <button className="review-button"> Leave a Review</button>
                </Link>
              </div>
            </div>
          </div>
        </li>
        </Link>
      </div>

    );
  }
}

export default BusinessIndexItem;
