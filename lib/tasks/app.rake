task get_ip_location: :environment do
  CreateVisitorLocation.create_all
end