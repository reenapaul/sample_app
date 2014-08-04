module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(users)
    gravatar_id = Digest::MD5::hexdigest(users.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: users.name, class: "gravatar")
  end
end


