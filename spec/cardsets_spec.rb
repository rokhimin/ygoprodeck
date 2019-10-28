
RSpec.describe Ygoprodeck do
  it "Check Card sets" do
    expect(Ygoprodeck::Card.sets).not_to be nil
  end
	
end