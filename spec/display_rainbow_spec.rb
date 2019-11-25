def display_rainbow(colors)
  it "accepts one argument" do
  puts expect(colors).to receive(:[]).with(0).at_least(:once).and_return("red")
  puts expect(colors).to receive(:[]).with(1).at_least(:once).and_return("orange")
  puts expect(colors).to receive(:[]).with(2).at_least(:once).and_return("yellow")
  puts expect(colors).to receive(:[]).with(3).at_least(:once).and_return("green")
  puts expect(colors).to receive(:[]).with(4).at_least(:once).and_return("blue")
  puts expect(colors).to receive(:[]).with(5).at_least(:once).and_return("indigo")
  puts expect(colors).to receive(:[]).with(6).at_least(:once).and_return("violet")
  end 
  colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

  it 'prints out the colors of the rainbow correctly when passed in in order' do
    colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
    expect { display_rainbow(colors) }.to output("R: red, O: orange, Y: yellow, G: green, B: blue, I: indigo, V: violet\n").to_stdout
  end
end
