module PostsHelper
  def tag_cloud(tags)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / max.count
      yield(tag)
    end
  end
end
