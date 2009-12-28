myrank = MPI::Comm::WORLD.rank()
csize = MPI::Comm::WORLD.size()

k = {}
k["a"] = 1234
k["b"] = 0.123
k["c"] = [1234,2]


if myrank == 0
  a = [[1,5], [2], k ,["syr"]]
  b = MPI::Comm::WORLD.scatter(a, 0)
else
  b = MPI::Comm::WORLD.scatter(nil, 0)
end

puts "rank: #{myrank}, data: #{b.inspect}"

