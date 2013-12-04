require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save note without title" do
    note = Note.new
    assert !note.save, "Saved the note without a title"
  end
end
