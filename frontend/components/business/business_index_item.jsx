import React from "react";
import { Link } from "react-router-dom";

class BusinessIndexItem extends React.Component {
  render() {
    let businessRating = Math.floor(this.props.business.ratingAverage * 2);
    let {
      photoUrls,
      id,
      biz_name,
      price,
      phone_number,
      address,
      city,
      business_info,
    } = this.props.business;
    return (
      <li className="business-index-item-master">
        <div className="business-index-item-skeleton-master">
          <Link to={`/businesses/${id}`} className="business-index-item-photo">
            <img src={photoUrls[0]} />
          </Link>
          <div className="business-index-item-info-master">
            <div className="business-index-item-info-top">
              <div className="business-index-item-info-top-left">
                <div className="business-index-item-info-title">
                  <Link to={`/businesses/${id}`}>{biz_name}</Link>
                </div>
             
                <div className='price-icon'>{price}</div>
              </div>
              <div className="business-index-item-info-top-right">
                <div>{phone_number}</div>
                <div>{address}</div>
                <div>{city}</div>
              </div>
            </div>
            <div className="business-index-item-info-bottom">
              "{business_info}"
            </div>
          </div>
        </div>
      </li>
    );
  }
}

export default BusinessIndexItem;
