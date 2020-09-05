This App is a Clone of Yelp :

backend: Ruby Rails 
database: Postgrsl
frontend: React Redux JS Css Html 




1.MVPs:

MVP 1 . session feature: Sign up , Log in , Log out , demoLogin

MVP 2 . homepage and business index page

MVP 3 . attach Google Map API to app , render it both in businesses Indexpage and business show page

MVP 4 . review feature: logged in user can write a review

BOUNUS
MVP 5 . a filter feature that can lead user to diffrent categories

MVP 6 . Search business by category and city


2.State Design:
state {
    entities:{
        businesses:{id1:{},id2:{}}
        users:{id1:{},id2:{}}
        reviews:{id1:{},id2:{}}
    }
    session:{id}
    errors:{session:{}}
}
