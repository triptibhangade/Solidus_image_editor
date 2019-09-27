require 'rails_helper'

RSpec.describe "spree/templates/index", type: :view do
  before(:each) do
    assign(:spree_templates, [
      Spree::Template.create!(),
      Spree::Template.create!()
    ])
  end

  it "renders a list of spree/templates" do
    render
  end
end
