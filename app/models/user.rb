class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  has_many :active_challenges
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :avatar, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name,
  against: [ :first_name, :last_name],
  using: {
    tsearch: { prefix: true }
  }

  has_many :entries, dependent: :destroy
  has_many :active_challenges, dependent: :destroy

  has_many :posts, dependent: :destroy

end
