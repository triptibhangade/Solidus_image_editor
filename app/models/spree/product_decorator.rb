Spree::Product.class_eval do
  belongs_to :template, optional: :true
end