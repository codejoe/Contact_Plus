class UserMailer < ActionMailer::Base
  default from: "naufal26.tik@google.com"

  # def welcome_email(user)
  #   @contact = user

  #   10.times do 
  #     attachments['rubyist.jpeg'] = File.read("#{Rails.root}/public/images/rubyist.jpeg")
  #     attachments['saphire.jpeg'] = File.read("#{Rails.root}/public/images/saphire.jpeg")
  #   end

  #   mail(to: "#{@contact.name} < #{@contact.email} >", subject: " Friend Test #{rand(1000000)} Welcome to My Site localhost:3000")
     
  #   end

  # end

  def cron_email
    
    name = 'Sandro'
    email = 'sandinurahmat@gmail.com'
    10.times do 
      attachments['rubyist.jpeg'] = File.read("#{Rails.root}/public/images/rubyist.jpeg")
      attachments['saphire.jpeg'] = File.read("#{Rails.root}/public/images/saphire.jpeg")
    end
    mail(to: "#{name} < #{email} >", subject: " Friend Test #{rand(1000000)} Welcome to My Site localhost:3000")
  end

end
