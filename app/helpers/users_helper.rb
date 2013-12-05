module UsersHelper
#returns the Gravatar (http://gravatar/com/) for the given user

def gravatar_for(user, options = {size: 50})	
	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	size = options[:size]
	gravatar_url = "http://icons-search.com/img/fasticon/BlackPower_Emoticons_Lnx.zip/BlackPower_Emoticons_Lnx-Icons-happy_256x256.png-256x256.png"
	

	image_tag(gravatar_url, alt: user.name, class: "gravatar")

 end

end
