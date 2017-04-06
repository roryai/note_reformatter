class ClassRoom
  def initialize(students)
    @students = students
  end

  def list_student_names
    @students.map(&:name).join(',')
  end
end


describe ClassRoom do
  let(:cr) {described_class.new}

  stu1 = double('student')
  stu2 = double('student')

  allow(stu1).to receive(:name) {'Rory'}
  allow(stu2).to receive(:name) {'Lorna'}

  it 'outputs student names correctly' do
    expect(cr.list_student_names).to eq "Rory, Lorna"
  end
end
