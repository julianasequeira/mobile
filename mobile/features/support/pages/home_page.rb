class HomePage < BasePage
  def load
    visit "/"
  end

  def open_menu
    find('#user-nav').click
  end

  def log_in
    find('#menu-item-67').click
  end

  def left_menu
    find('a.bb-user-login-link').click
  end

  def set(email, password)
    find('#login_username').set(email)
    find('#login_password').set(password)
    find('#login_button').click
  end

  def error
    find('#ajax_login_messages').text
  end

  def search_post(post)
    find('#mobile-header #searchform').click
    find('#mobile-header #searchform #s').set(post)
    find('#mobile-header #searchform #s').send_keys(:enter)   
  end

  def search_writer(writer)
    find('#mobile-header #searchform').click
    find('#mobile-header #searchform #s').set(writer)
    find('#mobile-header #searchform #s').send_keys(:enter)   
  end

  def search_word(word)
    find('#mobile-header #searchform').click
    find('#mobile-header #searchform #s').set(word)
    find('#mobile-header #searchform #s').send_keys(:enter)   
  end

  def writer
    writers_list = find_all('.stor li')
    writers_list[2].click
  end

  def writer_click(writer_search = nil)
    writers_list = find_all('.stor li')
    right = writers_list.first
    writers_list.each do |writer|
      right = writer if writer_search.downcase == writer.text.downcase  
    end
    right.click
  end

  def register_modal
    find('a.joinbutton').click
  end

  def register(email, username, password, name, bio)
    find('#register_email').set(email)
    find('#register_username').set(username)
    find('#register_password').set(password)
    find('#field_1').set(name)
    find('#field_2').set(bio)
    find('#register_button').click
  end

  def register_error
    find('.ctmessage')
  end
end
  