Factory.define :car do |c|
  c.brand 'Audi'
  c.model 'A8'
  c.description 'Vette peop'
  c.association :filling
end

