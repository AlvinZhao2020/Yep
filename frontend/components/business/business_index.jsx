import React from 'react'
import BusinessIndexItem from './business_index_item'
import Footer from '../footer/footer'


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
            <div>header</div>
            <div>
              {businesses.map((b, i) => (
                <BusinessIndexItem key={i} business={b} />
              ))}
            </div>
            <Footer/>
          </div>
        );
    }
}

export default BusinessIndex