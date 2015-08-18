# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# MyApps
MyApp.create(domain: 'Human Resource',
             description: 'Recruitment Application',
             technologies: 'Ruby on Rails, MySql'
)
MyApp.create(domain: 'Cloud',
             description: 'Cloud Resources Management, Monitoring and Provisioning Application',
             technologies: 'Ruby on Rails, MySql, Amazon Web Services'
)
MyApp.create(domain: 'Library',
             description: 'Library Application',
             technologies: 'Ruby on Rails, MySql'
)
MyApp.create(domain: 'On-Line Profile',
             description: 'On-Line Profile',
             technologies: 'Ruby on Rails, MySql'
)

# MyApps Uis
MyAppUi.create(my_app_id: 1,
               name: 'Login',
               image_path: 'on-board/login.png'
)

MyAppUi.create(my_app_id: 1,
               name: 'Dashboard',
               image_path: 'on-board/dashboard.png'
)

MyAppUi.create(my_app_id: 1,
               name: 'address',
               image_path: 'on-board/address.png'
)

MyAppUi.create(my_app_id: 1,
               name: 'Candidate',
               image_path: 'on-board/emp-profile.emp'
)