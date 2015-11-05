class Hoge
  def self.id; @@id; end
  def self.pass; @@pass; end

  def self.config args
    @@id = args[:id]
    @@pass = args[:pass]
  end

  def process
    p self.class.id
    p id rescue nil
  end
end

Hoge.config(id: 'hoge', pass: 'hogepass')
p Hoge.id
p Hoge.pass
p Hoge.new.process
