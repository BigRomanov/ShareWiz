ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "sharewiz.com",  
  :user_name            => "big.romanov@gmail.com",  
  :password             => "godgodgod",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}