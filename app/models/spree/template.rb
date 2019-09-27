class Spree::Template < Spree::Base

  attr_accessor :background

  acts_as_paranoid
  include Spree::ParanoiaDeprecations


  include Discard::Model
  self.discard_column = :deleted_at

  has_many :products

  validates_presence_of :name, :width, :height
  validates :width, :height, numericality: { greater_than: 0 }

end
