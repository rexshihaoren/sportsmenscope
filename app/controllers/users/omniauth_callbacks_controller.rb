class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController  
  def self.provides_callback_for(*providers)                                    
    providers.each do |provider|                                                                                                                                                     
      class_eval %Q{                                                            
        def #{provider}                                                         
          if not current_user.blank?                                            
            current_user.bind_service(env["omniauth.auth"])#Add an auth to existing
            redirect_to edit_user_registration_path, :notice => "Successfully link sportsmenscope accout with #{provider} account"
          else                                                                  
            @user = User.find_or_create_for_#{provider}(env["omniauth.auth"])   
                                                                                
            if @user.persisted?                                                 
              flash[:notice] = "Signed in with #{provider.to_s.titleize} successfully."
              sign_in_and_redirect @user, :event => :authentication, :notice => "Sign in successfully"
            else                                                                
              redirect_to new_user_registration_url                             
            end                                                                 
          end                                                                   
        end                                                                     
      }                                                                         
    end                                                                         
  end                                                                           
                                                                                
  provides_callback_for :github, :twitter, :google_oauth2, :facebook            
                                                                                
  # This is solution for existing accout want bind Google login but current_user is always nil
  # https://github.com/intridea/omniauth/issues/185                             
  def handle_unverified_request                                                 
    true                                                                        
  end                                                                           
end 