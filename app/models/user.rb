class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Add friendly id and use the name as slug allowing the use of finders
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
