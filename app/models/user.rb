class User < ApplicationRecord
  has_one :v_owner_profile
  has_one :pt_profile
  has_one :client_profile
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


        after_create :assign_role

        def assign_role
          if user_type == "Owner"
            add_role :v_owner_profile
          elsif user_type == "PT"
            add_role :pt_profile
          else
            add_role :client_profile
          end
        end

end
