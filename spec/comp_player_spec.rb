require 'comp_player'

  describe CompPlayer do

    subject(:bob) {described_class.new("Bob")}
    subject(:vic) {described_class.new("Vic")}

    before do
      allow(Kernel).to receive(:rand).and_return(20)
    end

    describe '#name' do
      it 'returns the name of the player' do
        expect(bob.name).to eq "Bob"
      end
    end

    describe '#hug_points' do
      it 'returns the hug points' do
        expect(bob.hug_points).to eq described_class::DEFAULT_HUG_POINTS
      end
    end

    describe '#reduce_hug_points' do
      it 'reduces the players hug points' do
        expect{bob.reduce_hug_points(13)}.to change {bob.hug_points}.by(-13)
      end
    end

    describe '#is a computer' do
      it 'should be a computer' do
        expect(bob.computer).to eq true
      end
    end


  end
