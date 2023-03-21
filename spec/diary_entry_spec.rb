require "diary_entry"

describe DiaryEntry do
  it "constructs and returns the entry" do
    entry = DiaryEntry.new("Mon", "Learned Ruby")
    expect(entry.content).to eq "Learned Ruby"
  end

  it "constructs and returns the day" do
    entry = DiaryEntry.new("Mon", "Learned Ruby")
    expect(entry.day).to eq "Mon"
  end

  it "number of words the entry sting contains" do
    entry = DiaryEntry.new("Mon", "Learned Ruby")
    expect(entry.count_words).to eq 2
  end

end
