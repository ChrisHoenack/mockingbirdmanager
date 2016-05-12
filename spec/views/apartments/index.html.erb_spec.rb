require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(),
      Apartment.create!()
    ])
  end

  it "renders a list of apartments" do
    render
  end
end
