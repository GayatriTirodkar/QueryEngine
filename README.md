#Readme

This is a very basic query engine application to execute real time queries on the user data.

To get this application running follow the below steps:

1. Execute rails server
2. Open the browser and type 'http://localhost:3000/'

The search mechanism is achieved using Ruby SunSpot interaction with Solr search engine.
Execute the below code to ensure the Solr is up and running
1. bundle exec rake sunspot:solr:start # or sunspot:solr:run to start in foreground
