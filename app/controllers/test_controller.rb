class TestController < ApplicationController
  def test
  	var1 = system 'heroku ps'
  	var2 = system 'heroku ps:scale web1=1'
  	p var1
  	p var2
  	render :inline => "<h1> Test </h1>"
  end
end
