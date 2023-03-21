require "diary"
require "diary_entry"
require "contacts"

describe "Integration" do
  context "diary #read" do
    it "Prints all diary entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Funday")
      entry_2 = DiaryEntry.new("Friday", "High day")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.read).to eq "#{entry_1.day}: #{entry_1.content}, #{entry_2.day}: #{entry_2.content}"
    end
  end

  context "diary #find_best_entries" do
    it "Prints entry readable in given time when only 1 applies" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Funday")
      entry_2 = DiaryEntry.new("Friday", "High day")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.find_best_entries(1, 1)).to eq ["#{entry_1.content}"]
    end

    it "Prints entries readable in given time when only 1 applies" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Funday")
      entry_2 = DiaryEntry.new("Friday", "High day")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.find_best_entries(1, 2)).to eq ["#{entry_1.content}", "#{entry_2.content}"]
    end
  end

  context "contacts #numbers method" do
    it "returns an array of phone numbers found in the diary" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "Called Chris on 07771600123")
      entry_2 = DiaryEntry.new("Friday", "Spoke to me ma 07917855437")
      diary.add(entry_1)
      diary.add(entry_2)
      contacts = Contacts.new(diary)
      expect(contacts.numbers).to eq ["07771600123", "07917855437"]
    end
  end
end
