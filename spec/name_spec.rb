RSpec.describe Ygoprodeck do
  it "check search by name" do
    expect(Ygoprodeck::Name.is('dark magician')).not_to be nil
  end

  it "check search by name spesific" do
		spec_name = Ygoprodeck::Name.is('dark magician')
    expect(spec_name['name']).to eq('Dark Magician')
	end
end