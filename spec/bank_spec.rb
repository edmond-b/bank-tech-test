require 'bank'

describe Bank do
  it 'has a defult balance of 0' do
    expect(subject.balance).to eq(0)
  end

  describe '.deposit' do
    it 'can add to the balance' do
      time = Time.now
      subject.deposit(100, time)
      expect(subject.balance).to eq(100)
    end
  end

  describe '.withdraw' do
    it 'lets you withdraw money' do
      time = Time.now
      subject.deposit(100, time)
      subject.withdraw(50)
      expect(subject.balance).to eq(50)
    end
  end

  describe '.print_statement' do
    it 'prints a history of deposits' do
      time = Time.now
      subject.deposit(100, time)
      expect(subject.print_statement).to eq([[time,100,subject.balance]])
    end
  end
end
