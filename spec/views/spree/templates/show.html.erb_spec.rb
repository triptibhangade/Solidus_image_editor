require 'rails_helper'

RSpec.describe "spree/templates/show", type: :view do
  before(:each) do
    @spree_template = assign(:spree_template, Spree::Template.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
