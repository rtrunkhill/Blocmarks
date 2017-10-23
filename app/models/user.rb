class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :topics 
  has_many :likes,  dependent: :destroy
  
  after_create :send_admin_mail
  
  def send_admin_mail
    FavoriteMailer.new_user(self).deliver
  end

  def liked(bookmark)
    likes.where(bookmark_id: bookmark.id).first
  end
end
