require_relative 'my_logger'
logger = MyLogger.instance
logger.logInformation("This is the first information")
logger.logInformation("This is the second information")
logger.logInformation("This is the third information")
