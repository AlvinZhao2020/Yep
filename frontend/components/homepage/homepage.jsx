import React from "react";
import { Link } from "react-router-dom";
import Footer from "../footer/footer";
import Search from '../search/search';


class HomePage extends React.Component {
  constructor(props) {
    super(props);
    this.handleLogout = this.handleLogout.bind(this);
   
  }

  handleLogout(e) {
    e.preventDefault();
    this.props.logout();
  }

  componentDidMount(){
      this.props.fetchBusinesses();
  }

  renderNavbar() {
    if (this.props.currentUser) {
      return (
        <div id="logout" className="nav-bar-right">
          <Link to="/businesses" className="home-underline">
            Welcome {this.props.currentUser.first_name}
          </Link>
          <button onClick={this.handleLogout} className="home-underline">
            Log Out
          </button>
        </div>
      );
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
      <div>
        <div className="home-page">
          <div className="home-main-section">
            <div className="home-main-nav-bar">
              <div className="home-nav-bar">
                <div className="nav-bar-left">
                  <div className="home-underline no-drop">
                    <Link to="/businesses">Write a Review</Link>
                  </div>
                  <a
                    href="https://github.com/AlvinZhao2020"
                    target="_blank"
                    className="home-underline"
                  >
                    GitHub
                  </a>
                  <a
                    href="https://www.linkedin.com/in/alvin-zhao-8656b815a/"
                    target="_blank"
                    className="home-underline"
                  >
                    LinkedIn
                  </a>
                </div>
                <div className="nav-right-parent">{this.renderNavbar()}</div>
              </div>
            </div>

            <div className="home-main-inner">
              <Link to="/businesses">
                <div className="home-logo">YEP</div>
              </Link>
              <Search/>
            </div>
          </div>
        </div>
        <div className="home-page-itembox">
          <div className="home-box-title">Find the Best Businesses in Town</div>
          <div className="home-itembox-container">
            <Link to="/businesses" className="home-category">
              <div className="home-all-picture" />
              <div className="home-category-text">All Businesses</div>
            </Link>
            <Link to="/businesses/chinesefood" className="home-category">
              <div className="home-CF-picture" />
              <div className="home-category-text">Chinese Food</div>
            </Link>
            <Link to="/businesses/bbq" className="home-category">
              <div className="home-BBQ-picture" />
              <div className="home-category-text">BBQ</div>
            </Link>
            <Link to="/businesses/sushi" className="home-category">
              <div className="home-SUSHI-picture" />
              <div className="home-category-text">SUSHI</div>
            </Link>
          </div>
        </div>
        <Footer />
      </div>
    );
  }
}

export default HomePage;
