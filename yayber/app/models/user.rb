class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jobs

  JOB_TYPES = ["Toàn thời gian", "Bán thời gian", "Hợp đồng", "Tự do", "Thực tập"]
  JOB_LOCATIONS = ["Bạc Liêu", "Sóc Trăng", "Cần Thơ"]
end
