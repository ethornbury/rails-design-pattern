#saved in the file app/models/car_observer.rb
require 'my_logger'

class CarObserver < ActiveRecord::Observer
    
    def after_update(record)
        # use the MyLogger instance method to retrieve the single instance/object of the class
        @logger = MyLogger.instance
        # use the logger to log/record a message about the updated car
        @logger.logInformation("CarObserver Demo:")
        @logger.logInformation("The car of #{record.firstname} #{record.lastname}
        has been updated. cost #{record.cost}")
        
    end
    
end
