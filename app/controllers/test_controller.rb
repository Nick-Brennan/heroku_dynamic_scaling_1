class TestController < ApplicationController
  def test
  	# added a buildpack
  	p "ok 1"
  	var1 = system 'heroku ps --app cli-test-1'
  	p "ok 2"
  	# var1 = system 'heroku ps:resize web=standard-1x --app cli-test-1'
  	var2 = system 'heroku ps:scale web1=1 --app cli-test-1'
  	var3 = system 'heroku ps:scale web2=1 --app cli-test-1'
  	# var3 = system 'ps'
  	# var4 = system 'scale web1=1:standard-1x'
  	# system 'ps --help simple'
  	# p var1
  	p var2
  	p var3
  	# p var4
  	render :inline => "<h1> Test </h1>"
  end

  def off
  	p "switching dyno off"
  	var1 = system 'heroku ps:stop web1 --app cli-test-1'
  	var2 = system 'heroku ps:scale web1=0 --app cli-test-1'
  	var3 = system 'heroku ps:stop web2 --app cli-test-1'
  	var4 = system 'heroku ps:scale web2=0 --app cli-test-1'
  	# var5 = system 'heroku ps:resize web=hobby --app cli-test-1'
  	p var1
  	p var2
  	p var3
  	p var4
  	# p var5
  	render :inline => "<h1> Check Web UI </h1>"
  end
end
