class TestController < ApplicationController
  def test
  	# added a buildpack
  	var1 = system 'heroku ps'
  	var2 = system 'heroku ps:scale web1=1'
  	var3 = system 'ps'
  	var4 = system 'scale web1=1:standard-1x'
  	system 'ps --help simple'
  	p var1
  	p var2
  	p var3
  	p var4
  	render :inline => "<h1> Test </h1>"
  end
end
