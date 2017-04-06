class Burger
  attr_reader :options

  def initialize(options={})
    @options = options
  end

  def apply_ketchup
    @ketchup = @options[:ketchup]
  end

  def has_ketchup_on_it?
    @ketchup
  end
end

############################################
#This is a Team Treehouse example from 2011, syntax is old
############################################

describe Burger do
  describe "#apply_ketchup" do
    subject(:burger) {described_class.new(ketchup: true)}
    before  { burger.apply_ketchup }

    context "with ketchup" do
      #line below is replaced by subject line above.
      # let(:burger) { Burger.new(:ketchup => true) }

      #current syntax
      it 'should have ketchup on it' do
        expect(burger.has_ketchup_on_it?).to be true
      end
    end

    # old syntax
    context "without ketchup" do
      let(:burger) { Burger.new(:ketchup => false) }
      it { should_not have_ketchup_on_it }
    end
  end
end
