ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true

ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "directorio_sena.com",  
  :user_name            => "william.betancur@gmail.com",  
  :password             => "",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
} 

ActionMailer::Base.default_url_options[:host] = "localhost:3000"  
