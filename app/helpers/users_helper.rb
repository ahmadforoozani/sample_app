module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    if user.gender.downcase == 'male'
      gravatar_url = image_url('male logo.png')
    else
      gravatar_url = image_url('female logo.png')
    end
    
    image_tag(gravatar_url,  size:"120", alt: user.name, class: "gravatar")
  end

end