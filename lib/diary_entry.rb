class DiaryEntry
  def initialize(day, content)
    @day = day
    @content = content
  end

  def day
    @day
  end

  def content
    @content
  end

  def count_words
    @content.split(" ").length
  end
end