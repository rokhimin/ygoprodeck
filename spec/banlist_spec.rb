RSpec.describe Ygoprodeck do

  it "check Banlist TCG" do
    expect(Ygoprodeck::Banlist.tcg).not_to be nil
  end
  it "check Banlist OCG" do
    expect(Ygoprodeck::Banlist.ocg).not_to be nil
  end
  it "check Banlist GOAT" do
    expect(Ygoprodeck::Banlist.goat).not_to be nil
  end
	
end