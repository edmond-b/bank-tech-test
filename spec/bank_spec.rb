require 'bank'

describe Bank do
  it 'has a defult balance of 0' do
    expect(subject.balance).to eq(0)
  end

  describe '.deposit' do
    it 'can add to the balance' do
      subject.deposit(100)
      expect(subject.balance).to eq(100)
    end
  end

  describe '.withdraw' do
    it 'lets you withdraw money' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.balance).to eq(50)
    end
  end
end
