require 'rake'

#scheduler = Rufus::Scheduler.new(:lockfile => ".rufus-scheduler.lock")

scheduler = Rufus::Scheduler.new
#unless scheduler.down?
  #scheduler.every("20m") do
    #Rails.logger.info('Scheduler : Getting IP Location started')
    #CreateVisitorLocation.create_all
    #Rails.logger.info('Scheduler : Getting IP Location completed')
  #end
#end
