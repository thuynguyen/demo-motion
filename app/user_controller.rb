class UserController < UIViewController
	
	def viewDidLoad
		super
		self.title = "User"
		self.view.backgroundColor = UIColor.whiteColor

		@name_label = UILabel.alloc.initWithFrame [[0, 0], [20, 20]]
    @name_label.text = "Name"
    @name_label.sizeToFit
    @name_label.center = CGPointMake(30, self.view.frame.size.height / 2 - 120)
    self.view.addSubview @name_label

		@text_field_name = UITextField.alloc.initWithFrame [[0,0], [200, 26]]
		@text_field_name.placeholder = "Type name"
		@text_field_name.textAlignment = UITextAlignmentCenter
		@text_field_name.autocapitalizationType = UITextAutocapitalizationTypeNone
		@text_field_name.borderStyle = UITextBorderStyleRoundedRect
		@text_field_name.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2 - 120)
		self.view.addSubview @text_field_name

		@phone_label = UILabel.alloc.initWithFrame [[0, 0], [20, 20]]
    @phone_label.text = "Phone"
    @phone_label.sizeToFit
    @phone_label.center = CGPointMake(28, @text_field_name.center.y + 30)
    self.view.addSubview @phone_label

		@text_field_phone = UITextField.alloc.initWithFrame [[0,0], [200, 26]]
		@text_field_phone.placeholder = "Type phone"
		@text_field_phone.textAlignment = UITextAlignmentCenter
		@text_field_phone.autocapitalizationType = UITextAutocapitalizationTypeNone
		@text_field_phone.borderStyle = UITextBorderStyleRoundedRect
		@text_field_phone.center = CGPointMake(self.view.frame.size.width / 2, @text_field_name.center.y + 30)
		self.view.addSubview @text_field_phone

		@submit = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @submit.setTitle("Submit", forState:UIControlStateNormal)
    @submit.setTitle("Saving ...", forState:UIControlStateDisabled)
    @submit.setTitleColor(UIColor.lightGrayColor, forState:UIControlStateDisabled)
    @submit.sizeToFit
    @submit.center = CGPointMake(self.view.frame.size.width / 2, @text_field_phone.center.y + 40)
    

    @submit.addTarget(self,
      action: :createPerson,
      forControlEvents: UIControlEventTouchUpInside)

    
    self.view.addSubview @submit
  end

  def createPerson
    p = Person.new 
    is_save = p.create_user(@text_field_name.text, @text_field_phone.text) 

    if is_save
      message = "You created person successfully"
    else
      message = "You created person unsuccessfully"
    end
    #@alert_box = UIAlertView.alloc.initWithTitle("Notice",
     #   message: message,
      #  delegate: nil,
       # cancelButtonTitle: "ok",
        #otherButtonTitles:nil)

    #@alert_box.show
    
    
     
    openList
  end  


  def openList
    init_list = ListController.alloc.initWithNibName(nil, bundle: nil)
    init_list.title = "List"
    self.navigationController.pushViewController(init_list, animated:true)
  end
end