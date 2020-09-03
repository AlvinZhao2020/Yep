import React from "react";
import { Link } from "react-router-dom";

class BusinessIndexItem extends React.Component {
  render() {
    let {category,photoUrls,id,biz_name,price,phone_number,
      address,city,business_info,rating,} = this.props.business;
      
    let ItemRating = rating*2
    return (
      <li className="business-index-item-box">
        <div className="business-index-item-skeleton-box">
          <Link to={`/businesses/${id}`} className="business-index-item-photo">
            <img src={photoUrls[0]} />
          </Link>
          <div className="business-index-item-info-box">
            <div className="business-index-item-info-top">
              <div className="business-index-item-info-top-left">
                <div className="business-index-item-bizname">
                  <Link to={`/businesses/${id}`}>{biz_name}</Link>
                </div>
                <img
                  className={`star-mid-${ItemRating}` + ` star-mid`}
                  src="https://i.imgur.com/UkZkm0D.png"
                ></img>
                <div className="price-icon">COST:{price}</div>
              </div>
              <div className="business-index-item-info-top-right">
                <ul>
                  <li>
                    <i className="fas fa-city"></i> {city}
                  </li>
                  <li>
                    <i className="fas fa-utensils"></i> {'      '}{category}
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
