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

# ----------------------------------------------------------------------------------------------------------------
# Cloud

description = 'Used by 500 users daily, this application enable developers of upwork (formerly oDesk) to launch and
manage their development and production VMs (virtual machines). Users need not go to AWS console to do these things.
As an admin you could control the type of instances users can launch and the duration for which they can use it.
As a company, this allowed easy management, monitoring and control of your virtual infrastructure usage and thereby
also expenses.'

technologies = 'Ruby on Rails, MySql, Amazon Web Services - EC2, VPC (Public/Private/VPN), RDS, DevOPS, AutoScaling,
ELB, CloudWatch, CloudFormation'

MyApp.create(domain: 'Cloud',
             description: description,
             technologies: technologies
)

100.times do
  Visitor.create(remote_ip: '180.76.15.143')
  Visitor.create(remote_ip: '62.219.8.233')
  Visitor.create(remote_ip: '82.80.230.228')
  Visitor.create(remote_ip: '62.219.8.233')
  Visitor.create(remote_ip: '198.101.238.203')
  Visitor.create(remote_ip: '64.79.100.52')
end




