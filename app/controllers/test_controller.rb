class TestController < ApplicationController
  def test
  	# added a buildpack
  	Thread.new do
	  	p "ok 1"
	  	# var1 = system 'heroku ps --app cli-test-1'
	  	p "ok 2"
	  	# var1 = system 'heroku ps:resize web=standard-1x --app cli-test-1'
	  	Thread.new do
	  		var2 = system 'heroku ps:scale web1=1 --app cli-test-1'
	  		p var2
	  	end
	  	Thread.new do
	  		var3 = system 'heroku ps:scale web2=1 --app cli-test-1'
	  		p var3
	  	end
	  	# var3 = system 'ps'
	  	# var4 = system 'scale web1=1:standard-1x'
	  	# system 'ps --help simple'
	  	# p var1  	
	  	# useless change
  	end
  	# p var4
  	render :inline => "<h1> Test </h1>"
  end

  def off
  	Thread.new do
	  	p "switching dyno off"
	  	Thread.new
	  		var1 = system 'heroku ps:stop web1 --app cli-test-1'
	  		p var1
	  	end
	  	Thread.ew
	  		var2 = system 'heroku ps:scale web1=0 --app cli-test-1'
	  		p var2
	  	end
	  	Thread.new
	  		var3 = system 'heroku ps:stop web2 --app cli-test-1'
	  		p var3
	  	end
	  	Thread.new
	  		var4 = system 'heroku ps:scale web2=0 --app cli-test-1'
	  		p var4
	  	end
	  	# var5 = system 'heroku ps:resize web=hobby --app cli-test-1'
	  	# p var5
  	end
  	render :inline => "<h1> Check Web UI </h1>"
  end
end
