module PostsHelper
  def published_text(publish)
    return 'Published' if publish

    'Not Published'
  end
end
