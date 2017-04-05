require_relative '../note_reformatter.rb'

describe NoteReformatter do
  subject(:note_ref) {described_class.new}

  it 'can output a string' do
    expect(note_ref.output).to eq "Hello, world."
  end

end
