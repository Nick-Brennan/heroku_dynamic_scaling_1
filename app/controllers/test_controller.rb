class TestController < ApplicationController
  def test
  	render :inline => "<h1> Test </h1>"
  end
end
