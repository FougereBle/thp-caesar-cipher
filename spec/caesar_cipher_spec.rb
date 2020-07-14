require_relative "../lib/caesar_cipher"

RSpec.describe "Encrypt one letter" do
  it "Encrypt lowercase letter" do
    expect(encrypt_letter("a", 1)).to eq "b"
    expect(encrypt_letter("y", 2)).to eq "a"
    expect(encrypt_letter("z", 1)).to eq "a"
    expect(encrypt_letter("a", 1000)).to eq "m"
  end

  it "Encrypt uppercase letter" do
    expect(encrypt_letter("A", 1)).to eq "B"
    expect(encrypt_letter("Y", 2)).to eq "A"
    expect(encrypt_letter("Z", 1)).to eq "A"
    expect(encrypt_letter("A", 1000)).to eq "M"
  end

  it "Encrypt not letter char" do
    expect(encrypt_letter(" ", 1)).to eq " "
    expect(encrypt_letter(",", 1)).to eq ","
    expect(encrypt_letter("?", 1)).to eq "?"
    expect(encrypt_letter("!", 1)).to eq "!"
  end
end

RSpec.describe "Encrypt sentence" do
  it "Encrypt one word sentence" do
    expect(encrypt_sentence("Hello", 10)).to eq "Rovvy"
    expect(encrypt_sentence("Hello", 1000)).to eq "Tqxxa"
  end

  it "Encrypt multiple words sentence" do
    expect(encrypt_sentence("Hello World!", 10)).to eq "Rovvy Gybvn!"
    expect(encrypt_sentence("Hello World!", 1000)).to eq "Tqxxa Iadxp!"
  end
end
