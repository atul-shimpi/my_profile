# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ----------------------------------------------------------------------------------------------------------------
# On-board
MyApp.create(domain: 'Human Resource', description: 'Recruitment Application', technologies: 'Ruby on Rails, MySql')
MyAppUi.create(my_app_id: 1, name: 'Login', image_path: 'on-board/login.png')
MyAppUi.create(my_app_id: 1, name: 'Dashboard', image_path: 'on-board/dashboard.png')
MyAppUi.create(my_app_id: 1, name: 'Address',image_path: 'on-board/address.png')
MyAppUi.create(my_app_id: 1, name: 'Create Candidate', image_path: 'on-board/candidate_info.png')
MyAppUi.create(my_app_id: 1, name: 'Settings', image_path: 'on-board/app_settings.png')
MyAppUi.create(my_app_id: 1, name: 'Forms',image_path: 'on-board/forms.png')
MyAppUi.create(my_app_id: 1, name: 'Employment Form',image_path: 'on-board/emp_app_form.png')
MyAppUi.create(my_app_id: 1, name: 'Create User', image_path: 'on-board/create_user.png')

# ----------------------------------------------------------------------------------------------------------------
# Library
MyApp.create(domain: 'Library', description: 'Library Application',  technologies: 'Ruby on Rails, MySql')
MyAppUi.create(my_app_id: 2, name: 'Login', image_path: 'library/login.png')

# ----------------------------------------------------------------------------------------------------------------
# On-line profile
MyApp.create(domain: 'On-Line Profile', description: 'On-Line Profile', technologies: 'Ruby on Rails, MySql')
MyAppUi.create(my_app_id: 3, name: 'Home', image_path: 'my_profile/home.png')
MyAppUi.create(my_app_id: 3, name: 'My Apps', image_path: 'my_profile/work.png')

# ----------------------------------------------------------------------------------------------------------------
# Cloud
MyApp.create(domain: 'Cloud', description: 'Cloud Resources Management, Monitoring and Provisioning Application',
             technologies: 'Ruby on Rails, MySql, Amazon Web Services')





