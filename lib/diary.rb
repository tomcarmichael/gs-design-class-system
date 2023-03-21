class Diary
  def initialize
    @entries = []
  end

  def add(entry) # Takes a DiaryEntry object
    @entries << entry
  end

  def read 
    @entries.map { |entry| "#{entry.day}: #{entry.content}" }.join(', ')
  end

  def find_best_entries(min, wpm)
    output = []
    words_readable = min * wpm
    @entries.each do |entry|
      output << entry.content if entry.count_words <= words_readable
    end
    return output
  end
end


