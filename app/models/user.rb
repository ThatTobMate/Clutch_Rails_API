class User < ActiveRecord::Base
  # Include default devise modules.
  include AbstractController::Callbacks
  include DeviseTokenAuth::Concerns::User
  # include DeviseTokenAuth::Concerns::SetUserByToken
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  has_and_belongs_to_many :clans
  has_and_belongs_to_many(:users,
      :join_table => "user_connections",
      :foreign_key => "user_a_id",
      :association_foreign_key => "user_b_id")
  # has_many :topics
  # has_many :posts
  has_many :comments



  before_save :default_user

    def default_user
      self.provider = 'email'
      skip_confirmation!
    end

end
