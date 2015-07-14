module SessionsHelper
  require 'rubygems'
  require 'net/ldap'
  
  def log_in(user)
    session[:user_id] = user.userid
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  def authenticate(user)
    #raise user.inspect
    return false if user[:user_name].empty? or user[:password].empty?
    
    #user_name = user[:user_name].downcase
    #password = user[:password]
    
    credentials = {
      :method => :simple,
      :username => "cn=oidread,cn=Users,dc=oasas,dc=ny,dc=gov",  #"LDAPadmin@rt.oasas.state.ny.us", "cn=oidread,cn=Users,dc=oasas,dc=ny,dc=gov", user[:user_name]
      :password => "7OVhFPgQ99dP"   #"valatie12184" "7OVhFPgQ99dP", user[:password] 
    }
    
    
      ldap = Net::LDAP.new(
      host:  "pluto.oasas.ny.gov",      #"BDC.rt.oasas.state.ny.us", "pluto.oasas.ny.gov",
      port: "4032",                      #"389", "4032", 
      base: 'dc=oasas,dc=ny,dc=gov',
      auth: credentials
    )
    
    if ldap.bind # && login_user = ldap.search(:filter => "sAMAccountName=#{user_name}").first
      return true #self.new(login_user)
    else
      return nil
    end # end if
    
    rescue Net::LDAP::LdapError => e
      return false
    end #end rescue
    
    def is_logged_in?
      #session[:user_id] = 1547
      if session[:user_id] 
        return true
       else
         return false
      end
    end # end is_logged_in?
    
  end # end authenticate
  
 # end SessionHelper
