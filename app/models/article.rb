class Article < ActiveRecord::Base
  validates :title,  presence: true,
                     length: { minimum: 5 }
  validates :text, presence: false,
                   length: {minimum: 10, maximum: 50}
end
