class MyLogger
  private_class_method :new   # makes the default 'new' method private so it cannot be called, thus making normal instantiation impossible
  @@logger = nil    # class method, accessible across all instance object of MyLogger
  def MyLogger.create   #must use .create to make a new object
    @@logger = new unless @@logger    #instantiates the class object with 'new' unless it already exists, preventing more than one object instance
    @@logger    #returns the new instance
  end
end

##?!?!!! CAN'T YOU JUST OVERRIDE the spronkin' NEW
class MySGlogger
  @@SLog = self.object_id if @@SLog == nil
  def self.new
    if @@SLog == self.object_id
      super
    else

    end
    def MySGlogger.decapitate(extraInstance)
      extraInstance = nil
    end
  end
end

my_new_logger = MyLogger.create
puts my_new_logger.object_id
my_other_logger = MyLogger.create
puts my_other_logger.object_id

my_new_logger = MySGlogger.new
puts my_new_logger.object_id
my_other_logger = MySGlogger.new
puts my_other_logger.object_id

# The following are some extra different ways to define Class.methods
class MyClassMethods
  def MyClassMethods.myFirstClassMethod
    # the normal (I would guess) method
  end
  def self.mySecondClassMethod
    # not bad, not bad, I can see the logic behind this one
  end
  class <<self
    def myThirdClassMethod
      # Interesting third method, no? embedded classes
    end
  end
end

