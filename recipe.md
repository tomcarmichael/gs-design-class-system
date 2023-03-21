{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
   
> As a user  
> So that I can record my experiences  
> I want to keep a regular diary

> As a user  
> So that I can reflect on my experiences  
> I want to read my past diary entries 

> As a user  
> So that I can reflect on my experiences in my busy day  
> I want to select diary entries to read based on how much time I have and my
> reading speed

> As a user  
> So that I can keep track of my tasks  
> I want to keep a todo list along with my diary

> As a user  
> So that I can keep track of my contacts  
> I want to see a list of all of the mobile phone numbers in all my diary
> entries

- should mobile phone numbers be associated with contact names? Not specified but makes sense

1. Design the Class System


                      ┌───────────────────────────────────────┐
                      │             Contacts                  │
                      │                                       │
                      │- Contains an array of numbers         │
                      │! initialize with diary                │
                      │! update _contacts(Diary)              │
                      │! .contacts to display contacts        │
                      └────────────────────┬──────────────────┘
                                           │
                        ┌──────────────────┴──────────────────────┐
                        │                                         │
                        │                Diary                    │
┌─────────────────────┐ │                                         │
│                     │ │
│     ToDo List       │ │      -        │
│                     │ │                                         │
│!add(task)           │ │                                         │
│                     │ │       - Read-displays all entries
                               select best entry to read in time   reading speed- select entry to read based on time available + 
│                     │ │                                         ┼
│                     │ │       - Add(DiaryEntry)
│                     │ │                                         │
│                     │ └───────────────────────┬─────────────────┘
│                     │                         │
│                     │                         │
└──────┬──────────────┘                         │  Contains a list of...
       │                                        │
       │                                        │
       │                         ┌──────────────┴───────────────────┐
       │   Contains a list of    │         Diary Entry              │
       │                         │                                  │
       │                         │  - initialize(day, entry)        │
  ┌────┴──────────────────────┐  │                                  │
  │         Task              │  │ -update (add later)              │
  │                           │  │  -                               │
  │Create task                │  │                                  │
  │                           │  │                                  │
  │                           │  │                                  │
  │                           │  │ - return word count              │
  │                           │  └──────────────────────────────────┘
  │                           │
  │                           │
  └───────────────────────────┘

Also design the interface of each class in more detail.

class Diary

  def initialize 
    # Create empty array to hold DiaryEntry objects
  def add (DiaryEntry) 
    # Instance of class DiaryEntry
  def read 
    # prints all diary entry
  def find_best_entries(min, wpm)
    # Iterate though each entry, check .count_words and match reading time avalible
    min = interger(avalible reading time)
    wpm = interger(how fast can I read)
    return = an array of strings (passages that match from the diary)

class DiaryEntry
  def initialize(day, entry) # both arguments are strings
    @day = day
    @entry = entry
  def

  def day
   @day
  end

  def entry
    @entry
  end

  def count_words
    @entry.split.length
  end
end

def Contacts # Contains an array of numbers
  def initialize(Diary)
    # For each entry in diary, find_numbers and add to array @numbers
  end

  def find_numbers(DiaryEntry)
    # Search @entry of the DiaryEntry for a number 11 digits long starting with 0
  end

  def update_numbers(Diary)
    # For each entry in diary, find_numbers and add to array @numbers
  end

  def numbers
    @numbers
  end

   
end


1. Create Examples as Integration Tests

# EXAMPLE

# Diary prints all diary entries

diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Funday")
entry_2 = DiaryEntry.new("Friday", "High day")
diary.add(entry_1)
diary.add(entry_2)
expect(Diary.read).to eq "#{entry_1.day}: #{entry_1.entry}, #{entry_2.day}: #{entry_2.entry}"

# Diary finds best entries for available reading time
diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Funday")
entry_2 = DiaryEntry.new("Friday", "High day")
diary.add(entry_1)
diary.add(entry_2)
expect(Diary.find_best_entry(1, 1)).to eq "Monday: Funday"

# Diary finds best entries for available reading time
diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Called Chris on 07771600123")
entry_2 = DiaryEntry.new("Friday", "Spoke to me ma 07917855437")
diary.add(entry_1)
diary.add(entry_2)
contacts = Contacts.new(Diary)
expect(contacts.numbers).contacts to eq ["07771600123", "07917855437"]

4. Create Examples as Unit Tests 

    entry = DiaryEntry.new("Mon", "Learned Ruby")
    expect(entry.content).to eq "Learned Ruby"

    entry = DiaryEntry.new("Mon", "Learned Ruby")
    expect(entry.day).to eq "Mon"

    entry = DiaryEntry.new("Mon", "Learned Ruby")
    expect(entry.count_words).to eq 2
