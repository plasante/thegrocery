class Product < ActiveRecord::Base
    
    belongs_to :user
    
    has_many :product_categories
    has_many :categories, through: :product_categories
    
    validates :name, presence: true, length: { minimum: 3, maximum: 50}
    validates :description, presence: true, length: { minimum: 10, maximum: 300}
    validates :user_id, presence: true
end