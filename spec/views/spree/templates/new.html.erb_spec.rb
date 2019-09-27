require 'rails_helper'

RSpec.describe "spree/templates/new", type: :view do
  before(:each) do
    assign(:spree_template, Spree::Template.new())
  end

  it "renders new spree_template form" do
    render

    assert_select "form[action=?][method=?]", spree_templates_path, "post" do
    end
  end
end
