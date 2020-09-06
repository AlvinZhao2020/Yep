import React from 'react'
import BusinessIndexItem from './business_index_item'
import Footer from '../footer/footer'
import HeaderContainer from '../header/header_container'
import Map from '../map/map'

class BusinessIndex extends React.Component{
    constructor(props){
        super(props)
    }

    componentDidMount(){
        this.props.fetchBusinesses();
        
     
    }
    render(){
        let {businesses} = this.props
        return (
          <div>
            <HeaderContainer />

            <div className="business-index-box">
              <div className="business-index-wraper">
                <div className="business-items-box">
                  {businesses.map((b, i) => (
                    <BusinessIndexItem key={i} business={b} />
                  ))}
                </div>
                <div className="map-box">
                  <Map className="index-map" businesses={businesses} />
                </div>
              </div>
            </div>

            <Footer />
          </div>
        );
    }
}

export default BusinessIndex