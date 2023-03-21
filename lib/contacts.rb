class Contacts
  def initialize(diary)
    # For each entry in diary, find_numbers and add to array @numbers
    update_numbers(diary)
  end

  def update_numbers(diary)
    # For each entry in diary, find_numbers and add to array @numbers
    @numbers = diary.read.scan(/0\d{10}(?!\d)/)
  end

  def numbers
    @numbers
  end
end
