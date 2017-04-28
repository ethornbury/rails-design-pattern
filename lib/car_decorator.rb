# the concret component we would like to decorate, a car in our example
class BasicCar
	def initialize(cost, manufacturer, color)
		@cost = cost
		@manufacturer = manufacturer
		@color = color
		@description = "basic car"
	end
	
	# getter method
	def cost
		return @cost
	end
	
	def details
		return @description + ": #{@cost}; " + @manufacturer + "; " + @color
	end	
end

# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class CarDecorator
	def initialize(real_car)
		@real_car = real_car
		@extra_cost = 0
		@description = "no extra feature"
	end
	
	def cost
		return @extra_cost + @real_car.cost
	end
	
	def details
		return @description + " " + @real_car.details
	end
	
end


# a concrete decorator
class ElectricWindowsDecorator < CarDecorator
	def initialize(real_car)
		super(real_car)
		@description = "electric windows"
		@extra_cost = 1000
	end
	
	def details
		return @description + ": #{@extra_cost} + " + @real_car.details  
	end	
end

# another concrete decorator
class MirrorDecorator < CarDecorator
	def initialize(real_car)
		super(real_car)
		@description = "anti glare rear view mirror"
		@extra_cost = 500
	end
	
	def details
		return @description + ": #{@extra_cost} + " + @real_car.details  
	end	
end

# another concrete decorator
class ParkingSensorDecorator < CarDecorator
	def initialize(real_car)
		super(real_car)
		@description = "parking sensor"
		@extra_cost = 800
	end
	
	def details
		return @description + ": #{@extra_cost} + " + @real_car.details  
	end	
end
