
##This is the page for the static BetterAt site hosted at http://better.at

We are using Middleman for building this page.

Middleman:
https://github.com/tdreyno/middleman


To run locally, follow the steps outlined here:


    gem install middleman
    
    
To run the server locally, you'll need to run this command (your server will run on port 4567 using sinatra)

    mm-server
    
In order to do the final build of the static site, you'll run the command:

    mm-build

For some reason, upon the final build, you'll need to go in after the fact and change the .CSS file's charset from "ASCII-8BIT" to "UTF-8"

