module SessionsHelper

def sign_in(fisher)
    remember_token = Fisher.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    fisher.update_attribute(:remember_token, Fisher.digest(remember_token))
    self.current_fisher = fisher
  end

  def signed_in?
    !current_fisher.nil?
  end

  def sign_out
    current_fisher.update_attribute(:remember_token,
                                  Fisher.digest(Fisher.new_remember_token))
    cookies.delete(:remember_token)
    self.current_fisher = nil
  end
  
end
