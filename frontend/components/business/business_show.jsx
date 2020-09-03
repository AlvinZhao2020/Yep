import React from 'react'



class BusinessShow extends React.Component{
    constructor(props){
        super(props)
    }

    componentDidMount() {
        this.props.fetchBusiness(this.props.match.params.id);
    }

    render(){
        let {business} = this.props
        if (business === undefined) return (
            <div>reloading page</div>
        )
        return(
            <div>
                <span>asdasda</span>
            <span>{business.biz_name}</span>
    
            </div>
        )
    }
}
export default BusinessShow