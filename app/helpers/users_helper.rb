module UsersHelper

	# Replace gravatar_for with another function to display user images
	# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    size = options[:size]
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
