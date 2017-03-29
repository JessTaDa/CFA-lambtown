class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  extend FriendlyId
  # friendly_id :title, use: :slugged
  friendly_id :slug_candidates, use: :slugged
  #puts slug_candidates array into here

  def slug_candidates
    #this is useful if we have two titles that
    #are the same. Then you will show the title,
    #content in the url
    [
      :title,
      [:title, :content],
    ]
  end
end
