RSpec.describe Ygoprodeck do
	
	test_spec = Ygoprodeck::List.is('karakuri')
	
  it "check list search by name" do
    expect(test_spec).not_to be nil
  end

  it "check list search by name (index 0)" do
    expect(test_spec[0]).not_to be nil
  end
  it "check list search by name (index 1)" do
    expect(test_spec[1]).not_to be nil
  end
  it "check list search by name (index 2)" do
    expect(test_spec[2]).not_to be nil
  end
	
end