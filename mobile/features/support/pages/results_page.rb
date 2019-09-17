class ResultPage < BasePage
  def posts
    find_all('.category-my-story')
  end

  def nothing
    find('.search_results')
  end

  def blog
    find('.mobile-item-nav-wrapper #user-blog').click
  end

  def photo
    find('.buddypress-content #item-header-avatar')
  end

  def articles
    find_all('.bp_members')
  end
end
