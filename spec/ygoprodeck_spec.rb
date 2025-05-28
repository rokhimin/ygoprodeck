RSpec.describe Ygoprodeck do
  it "Check version gem" do
    expect(Ygoprodeck::VERSION).not_to be nil
  end

  it "Check endpoint" do
    expect(Ygoprodeck::Endpoint.is).not_to be nil
  end
end
