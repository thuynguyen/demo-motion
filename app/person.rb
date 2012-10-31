class Person #< ParseResource::Base
	include ParseModel::Model
  fields :name, :phone


 def create_user(name, phone)
    #u = Person.new
    self.name = name
    self.phone = phone
    #u.save 
    self.saveInBackgroundWithBlock(lambda do |success, error|
      puts "after saving============="
      puts success.inspect
      puts error.inspect
      return success
    end)
    
  end
end
