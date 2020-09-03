import React from 'react'
import BusinessIndexItem from './business_index_item'
import Footer from '../footer/footer'
import HeaderContainer from '../header/header_container'

class BusinessIndex extends React.Component{
    constructor(props){
        super(props)
    }

    componentDidMount(){
        this.props.fetchBusinesses()
    }
    render(){
        let {businesses} = this.props
        return (
          <div>
            <HeaderContainer />
            <div>
              {businesses.map((b, i) => (
                <BusinessIndexItem key={i} business={b} />
              ))}
            </div>
            <Footer />
          </div>
        );
    }
}

export default BusinessIndex