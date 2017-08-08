require 'caesar_cipher'

describe 'caesar_cipher' do
  context "What a string!" do
    it "returns Bmfy f xywnsl!" do
      expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
  end


  context "given a and 5" do
    it "returns f" do
      expect(caesar_cipher("a", 5)).to eql("f")
    end
  end

  context "given ABC sand 3" do
    it "returns def" do
      expect(caesar_cipher("ABC", 3)).to eql("DEF")
    end
  end

  context "xYzA and 1" do
    it "returns yZaB" do
      expect(caesar_cipher("xYzA", 1)).to eql("yZaB")
    end
  end

  context "A and 26" do
    it "returns A" do
      expect(caesar_cipher("A", 26)).to eql("A")
    end
  end

  context "a and 27" do
    it "returns b" do
      expect(caesar_cipher("a", 27)).to eql("b")
    end
  end

end
