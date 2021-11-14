class Mentor
  # nameのインスタンス変数をクラスに持たせる
  attr_accessor :name
  
  # nameのインスタンス変数を初期化できるようにする
  def initialize(name)
    @name = name
  end

  # jobのインスタンスメソッドを持たせる
  def job
    puts "#{@name}です。私は現役のITプロフェッショナルです。"
  end
end

class RailsMentor < Mentor
  # jobメソッドをオーバーライドする。
  def job
    puts "#{@name}です。私はRubyとRailsでWebアプリケーションを作ります。"
  end
end
  
# kirameki という名前を持つMentorクラスのインスタンスを生成する  
kirameki = Mentor.new('煌木')

# akaide という名前を持つRailsMentorクラスのインスタンスを生成する
akaide = RailsMentor.new('赤出')

#jobを呼び出して仕事内容を表示させる
kirameki.job
akaide.job