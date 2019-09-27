require 'rails_helper'

RSpec.describe "spree/templates/edit", type: :view do
  before(:each) do
    @spree_template = assign(:spree_template, Spree::Template.create!())
  end

  it "renders the edit spree_template form" do
    render

    assert_select "form[action=?][method=?]", spree_template_path(@spree_template), "post" do
    end
  end
end
