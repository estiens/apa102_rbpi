# spec/lib/apa102_rbpi/utils_spec.rb

describe 'Utility Functions' do
  let(:klass) { Class.new { extend Apa102Rbpi } }

  describe 'Color Wheel' do
    # NOT SURE COLOR WHEEL IS WORKING, DOCUMENTS CURRENT FUNCTIONALITY
    it 'should be able to convert colors around the wheel from r->g->b->r' do
      expect(klass.color_wheel(0xFF0000)).to eq 0xFF0000
      expect(klass.color_wheel(0x00FF00)).to eq 0xFF0000
      expect(klass.color_wheel(0x0000FF)).to eq 0xFF0000
    end
  end

  describe 'RGB to Hex' do
    it 'should convert RGB to Hex' do
      expect(klass.rgb_to_hex(255,0,0)).to eq 0xFF0000
      expect(klass.rgb_to_hex(0,255,0)).to eq 0x00FF00
      expect(klass.rgb_to_hex(0,0,255)).to eq 0x0000FF
    end
  end

  describe 'Hex to RGB' do
    it 'should convert Hex to RGB' do
      expect(klass.hex_to_rgb(0xFF0000)).to eq [255,0,0]
      expect(klass.hex_to_rgb(0x00FF00)).to eq [0,255,0]
      expect(klass.hex_to_rgb(0x0000FF)).to eq [0,0,255]
    end
  end
end
