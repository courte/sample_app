module UsersHelper

	# Returns the Gravatar (http://gravatar.com/) for the given user.
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

	# Removes "password digest" error message from sign-up view
	def remove_sensitive_error_messages_from_user(user)
		@user.errors.full_messages.delete_if { |msg| msg =~ /digest/ }
	end
end
