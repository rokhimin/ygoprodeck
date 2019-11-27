
RSpec.describe Ygoprodeck do
  it 'Check random search' do
    expect(Ygoprodeck::Card.random).not_to be nil
  end
	
end