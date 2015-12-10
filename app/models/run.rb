class Run < ActiveRecord::Base
  belongs_to :user

  # validates :title, presence: true
  # validates :body, presence: true

  # def self.search(search)
  #   where("title ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%")
  # end

end
