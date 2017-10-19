class FavoriteMailer < ApplicationMailer
    default from: 'skepts@gmail.com'
    
    def new_user(user)
    
        headers["Message-ID"] = "#{user.email}"
        headers["In-Reply-To"] = "#{user.email}"
        headers["References"] = "#{user.email}"
        
        @user = user

        
        mail(to: user.email, subject: "Welcome to Blockmarks!")
    end
end
