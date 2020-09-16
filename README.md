[See it live](https://yepclone.herokuapp.com/#/)


## Overview
YepClone is a web app that allows people to find and review businesses,like sushi,
Bar, BBQ in their local communities.And User can see all businesses locations on a map. 
Right now there are 20 businesses in the server database. If an user want to wirte a 
review for a business, this user needs to login or sign up for a new user. 



## Features

### home page

There are 
* top nav bar :link to login/log out && click 'write a review' will lead user to businesses
  index page
* search component : Users can search for their favorite kind of businesses
* categorys componet : click one of them will go to that category page
* footer :links to developer's github, linkedin 
on the homepage. 

![Alt Text](app/assets/images/homepageshow.gif)

### Sign UP / LOG IN
User needs to log in before leaving a review for one business, when user logged in
he or she will get a session-token and next time when user opens this app , no more
login needed.A good thing is , if user doesnt want to sign up, just click demoUser 
button,then will login automaticly as a demo user.

![Alt Text](app/assets/images/sessionshow.gif)

### Search 

Users can search for their favorite kind of businesses

![Alt Text](app/assets/images/searchshow.gif)

### write review

User can write a review if logged in , but if not logged in, there will render an
alert tells user to log in first. After submitting the review form, it will redirect user
to the business show page and the new created review will be rendered . Only the author 
of that review have the right to delete it

![Alt Text](app/assets/images/writereviewshow.gif)

## Code Snippets



```javascript

```

## Functionality and MVP
- [ ] User auth. Login and sign up.
- [ ] Users can view a list of businesses in their local area with detailed information
- [ ] Logged in users can create and delete their own reviews 
- [ ] All business are filtered by categories, and user can search categories
- [ ] using Google map API to show business locations on map
- [ ] using AWS to store business pics


## Technologies
* Backend - Rails, Ruby, MongoDB
* Frontend - React, Redux, JavaScript, CSS, HTML.


