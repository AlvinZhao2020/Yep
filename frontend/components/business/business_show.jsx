import React from 'react'
import HeaderContainer from '../header/header_container'
import Footer from '../footer/footer'
import { Link } from 'react-router-dom';
import Map from '../map/map'
import ReviewIndex from '../review/review_index'
import ReviewIndexContainer from '../review/review_index_container'


class BusinessShow extends React.Component{
    constructor(props){
        super(props)
    }

    componentDidMount() {
        this.props.fetchBusiness(this.props.match.params.id);
        this.props.fetchReviews();
    }

    render(){
        let {business} = this.props
        if (business === undefined) return (
            <div>reloading page</div>
        )
        const {
          biz_name,
          business_info,
          address,
          category,
          city,
          hours,
          lat,
          id,
          lng,
          phone_number,
          price,
          rating,
          website,
          state,
          zipcode,
          photoUrls,
        } = business;
        return (
          <div>
            <HeaderContainer/>
            <div className="biz-img-index-box">
              {photoUrls.map((p, i) => (
                <div key={i} className="biz-img-item-box">
                  <img src={p} className="biz-show-img" />
                </div>
              ))}
            </div>
            <div className="show-page-box">
              <div className="show-left-box">
                <div className="show-bname">
                  <span>{biz_name}</span>
                </div>
                <div className="review-stars">
                  <img
                    className={`star-mid-${rating * 2}` + ` star-mid`}
                    src="https://i.imgur.com/UkZkm0D.png"
                  ></img>
                </div>

                <div className="show-biz-details">
                  <ul>
                    <li>
                      <Link
                        to={`/businesses/${category}`}
                        className="show-cate-link"
                      >
                        {category}
                      </Link>
                    </li>

                    <li className="show-opening">
                      <span className="show-open-tag">Open&nbsp;</span>&nbsp;
                      &nbsp;11:00AM - 7:00PM
                    </li>
                    <li>
                      <i className="fas fa-map-marker-alt"></i>
                      &nbsp;&nbsp;&nbsp;
                      {address},{city},{state}&nbsp;
                      {zipcode}
                    </li>
                    <li>
                      <i className="fas fa-phone-volume"></i>
                      &nbsp;&nbsp;&nbsp;
                      {phone_number}
                    </li>
                    <li>
                      <i className="fas fa-external-link-alt"></i>
                      &nbsp;&nbsp;&nbsp;
                      <a
                        href="https://www.yelp.com/search?cflt=restaurants&find_loc=1600%20Holloway%20Ave%2C%20San%20Francisco%2C%20CA%2094132"
                        className="show-cate-link"
                      >
                        {website}
                      </a>
                    </li>
                  </ul>
                </div>
                <div className="show-write-review-button-box">
                  <Link to={`/businesses/${business.id}/createreview`}>
                    <div className="show-write-review-button">
                      <i className="far fa-star"></i>&nbsp;write a review
                    </div>
                  </Link>   
                </div>
                <div className="review-index-box">
                  <ReviewIndexContainer reviews={this.props.reviews}/>
                </div>
              </div>
              <div className="show-right-box">
                <div className="show-info-map-box">
                  <Map
                    className="show-map"
                    businesses={[this.props.business]}
                    lat={lat}
                    lng={lng}
                  />
                </div>
              </div>
            </div>
            <Footer />
          </div>
        );
    }
}
export default BusinessShow