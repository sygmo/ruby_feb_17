# this file is normally found inside spec/controllers folders

require 'rails_helper'

RSpec.describe DojosController, type: :controller do
	it "routes / to the dojos controller index method" do
		expect(:get => "/").to route_to(:controller => "dojos", :action => "index")
	end
	it "routes /hello to the dojos controller world method" do
		expect(:get => "/hello").to route_to(:controller => "dojos", :action => "world")
	end
	it "routes /ninjas to the dojos controller ninjas method" do
		expect(:get => "/ninjas").to route_to(:controller => "dojos", :action => "ninjas")
	end
	it "routes post request to /ninjas to the dojos controller create method" do
		expect(:post => "/ninjas").to route_to(:controller => "dojos", :action => "create")
	end
end
