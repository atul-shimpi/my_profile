class MyAppUi < ActiveRecord::Base
  belongs_to :my_app, dependent: :destroy
end
