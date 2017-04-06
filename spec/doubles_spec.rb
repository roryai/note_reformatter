class ClassRoom
  def initialize(students)
    @students = students
  end

  def list_student_names
    @students.map(&:name).join(',')
  end
end


describe ClassRoom do
  context '1 double' do
    let(:student) {double :student}

    before :each do
      allow(student).to receive(:name) {'Rory'}
    end

    it 'outputs student names correctly' do
      cr = ClassRoom.new([student])
      expect(cr.list_student_names).to eq "Rory"
    end
  end

  context '2 doubles' do
    it 'outputs student names correctly' do
      student1 = double('student')
      student2 = double('student')

      allow(student1).to receive(:name) { 'John Smith'}
      allow(student2).to receive(:name) { 'Jill Smith'}
      # old stub syntax below
      # student1.stub(:name).and_return('John Smith')
      # student2.stub(:name).and_return('Jill Smith')


      cr = ClassRoom.new [student1,student2]
      expect(cr.list_student_names).to eq('John Smith,Jill Smith')
    end
  end
end
