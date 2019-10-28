
RSpec.describe Ygoprodeck do
  it "Check image" do
    expect(Ygoprodeck::Image.is('46986414')).not_to be nil
  end
	
  it "Check image small" do
    expect(Ygoprodeck::Image_small.is('46986414')).not_to be nil
  end

end