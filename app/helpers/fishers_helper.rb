module FishersHelper
	# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(fisher)
    gravatar_id = Digest::MD5::hexdigest(fisher.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: fisher.name, class: "gravatar")
  end
end
