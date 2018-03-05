class TestController < ApplicationController
  def test
  	system 'heroku ps:scale web1=1'
  	render :inline => "<h1> Test </h1>"
  end
end
