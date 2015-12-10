require 'attach'

describe Attach do
  subject(:attach) { described_class.new }
  let(:bob) { double :bob }

  describe '#hug' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      attach.hug(bob)
    end
  end

  describe '#bear_hug' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      attach.hug(bob)
    end
  end

  describe '#squeeze' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      attach.hug(bob)
    end
  end

  describe '#hover_hug' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      attach.hug(bob)
    end
  end

  describe '#soothing_embrace' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      attach.hug(bob)
    end
  end

  describe '#self_hug' do
    it 'hugs the other player' do
      expect(bob).to receive(:reduce_hug_points)
      attach.hug(bob)
    end
  end

end
