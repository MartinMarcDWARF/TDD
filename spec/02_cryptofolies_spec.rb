require_relative '../lib/02_cryptofolies'

describe "Method Cesar" do
  it "should return the text under Cesar convertion" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Hello", 2)).to eq("Jgnnq")
    expect(caesar_cipher("Hello", 0)).to eq("Hello")
    expect(caesar_cipher("Hello", 27)).to eq("ce n'est pas un integer le nombre requis est trop bas (Il faut mettre de 0 à 26)!!")
    expect(caesar_cipher("Hello", 43)).to eq("ce n'est pas un integer le nombre requis est trop bas (Il faut mettre de 0 à 26)!!")
    expect(caesar_cipher("Hello", -1)).to eq("ce n'est pas un integer le nombre requis est trop bas (Il faut mettre de 0 à 26)!!")
  end
end

  it "should return the Cesar code under text convertion" do
    expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eq("What a string!")
    expect(caesar_cipher("Jgnnq", -2)).to eq("Hello")
    expect(caesar_cipher("Hello", 0)).to eq("Hello")
    expect(caesar_cipher("Hello", -1)).to eq("Ifmmp")
    expect(caesar_cipher("Hello", 1)).to eq("ce n'est pas un integer le nombre requis est trop haut (Il faut mettre de -1 à -26)!!")
  end

