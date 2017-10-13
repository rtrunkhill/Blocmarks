class FavoriteMailer < ApplicationMailer
    default from: 'skepts@gmail.com'
    
    def new_user(user)
    
        headers["Message-ID"] = "#{user.email} @Blockmarks>"
        headers["In-Reply-To"] = "#{user.email} @Blockmarks>"
        headers["References"] = "#{user.email} @Blockmarks>"
        
        @user = user

        
        mail(to: user.email, subject: "Welcome to Blockmarks!")
    end
end
