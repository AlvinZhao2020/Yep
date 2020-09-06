import React from 'react';
import {Link} from 'react-router-dom'


class Search extends React.Component{
    constructor(props){
        super(props)
        this.state={
            category:'',
            city:''
        }
  
    }
    update(field) {
        return e => this.setState({
            [field]: e.target.value
        });
    }

    Searchfc(cate){
        let arr = ['ChineseFood','chinese','Sushi', 'BBQ', 'Bar', 'chinesefood', 'Chinesefood',
            'sushi', 'bbq', 'bar', 'BAR', 'SuShi', 'Chinese Food']
        if(arr.includes(cate)) return cate;
        else return ''
      
    }

    render(){
        return(
            <div className="home-search-bar">
                <div className="home-search-find">
                    <div className="home-search-find-title">Category</div>
                    <input
                        value={this.state.category}
                        className="business-search-find"
                        type="text"
                        placeholder="SUSHI, Bar, BBQ"
                        onChange = {this.update('category')}
                    />
                </div>
                <div className="home-search-loc">
                    <div className="home-search-loc-input">
                        <div className="home-search-find-near">City</div>
                        <input
                            value= {this.state.city}
                            className="business-search-near"
                            type="text"
                            placeholder="San Francisco"
                            onChange = {this.update('city')}
                        />
                    </div>
                    <Link to={`/businesses/${this.Searchfc(this.state.category)}`}>
                        <button className="home-search-submit">
                            <i className="fas fa-search" />
                        </button>
                    </Link>
                </div>
            </div>
        )
    }
}


export default Search