class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items, dependent: :destroy
  has_many :orders,     dependent: :destroy
  has_many :addresses,  dependent: :destroy

  validates :lase_name,        presence: true
  validates :first_name,       presence: true
  validates :last_name_kana,   presence: true, format: {with: /\A[ァ-ヶー－]+\z/ }
  validates :first_name_kana,  presence: true, format: {with: /\A[ァ-ヶー－]+\z/ }
  validates :email,            presence: true
  validates :address,          presence: true
  validates :telephone_number  presence: true

  def full_name
    first_name + " " + last_name
  end

  def full_name_kana
    first_name_kana + " " + last_name_kana
  end
end
