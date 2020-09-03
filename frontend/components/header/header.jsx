import React from "react";
import { Link, withRouter } from "react-router-dom";

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.handleLogout = this.handleLogout.bind(this);
  }

  handleLogout(e) {
    e.preventDefault();
    this.props.logout();
  }

  renderNavbar() {
    if (this.props.currentUser) {
      return (
        <div id="logout" className="nav-bar-right">
          <Link to="/" className="home-underline">
            Welcome to YEP
          </Link>
          <button onClick={this.handleLogout} className="home-underline">
            Log Out
          </button>
        </div>
      )
    } else {
      return (
        <div className="nav-bar-right">
          <Link
            to="/login"
            onClick={this.props.clearErrors}
            className="home-signup"
          >
            Log in
          </Link>
          <Link
            to="/signup"
            onClick={this.props.clearErrors}
            className="home-signup"
          >
            Sign Up
          </Link>
        </div>
      );
    }
  }

  render() {
    return (
      <div className="business-nav-bar-parent">
        <div className="business-nav-bar-upper-parent">
          <div className="business-nav-bar-upper">
            <div className="business-logo">
              <p>
                <Link to="/">YEP</Link>
              </p>
            </div>
            <div className="business-nav-search">
              <div className="home-search-find">
                <div className="home-search-find-title">Find</div>
                <input
                  className="business-search-find"
                  type="text"
                  placeholder="Chinese Food, BBQ , Sushi"
                />
              </div>
              <div className="home-search-loc">
                <div className="home-search-loc-input">
                  <div className="home-search-find-near">Near</div>
                  <input
                    className="business-search-near"
                    type="text"
                    placeholder="San Francisco"
                  />
                </div>
                <button className="home-search-submit">
                  <i className="fas fa-search" />
                </button>
              </div>
            </div>
            {this.renderNavbar()}
          </div>
        </div>

        <div className="business-nav-bar-categories">
          <div className="business-nav-bar-category-box">
            <div className="nav-bar-category-item">
              <Link to="/">
                <i className="fab fa-yelp"></i> Homepage
              </Link>
            </div>
            <div className="nav-bar-category-item">
              <Link to="/businesses">
                <i className="fas fa-home"></i> All Business{" "}
                <i className="fas fa-caret-down"></i>
              </Link>
            </div>

            <div className="nav-bar-category-item">
              <Link to="/businesses/bbq">
                <i className="fas fa-utensils"></i> BBQ{" "}
                <i className="fas fa-caret-down"></i>
              </Link>
            </div>
            <div className="nav-bar-category-item">
              <Link to="/businesses/sushi">      
                <i className="fas fa-fish"></i> Sushi{" "}
                <i className="fas fa-caret-down"></i>
              </Link>
            </div>
            <div className="nav-bar-category-item">
              <Link to="/businesses/bar">
                <i className="fas fa-beer"></i> Bar{" "}
                <i className="fas fa-caret-down"></i>
              </Link>
            </div>
            <div className="nav-bar-category-item">
              <Link to="/businesses/chinesefood">
                <i className="fas fa-utensils"></i> Chinese Food{" "}
                <i className="fas fa-caret-down"></i>
              </Link>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(Header);
