require "rails_helper"
describe DojosController do
  describe "routing", :type => :routing do
    it "routes to #index" do
      expect(:get => "/").to route_to(:controller => "dojos", :action => "index")
    end

    it "routes to #hello" do
      expect(:get => "/hello").to route_to("dojos#world")
    end

    it "routes to #ninjas" do
      expect(get("/ninjas")).to route_to("dojos#ninjas")
    end
  end
end
