printf("Hello, I am %d of %d\n", MPI::Comm::WORLD.rank(), MPI::Comm::WORLD.size())
MPI::Comm::WORLD.barrier()

myrank = MPI::Comm::WORLD.rank()

require 'ostruct'

if myrank == 0
    hello = OpenStruct.new
    hello.a = {1 => 2, 3=> 4}
    hello.b = "asdasd"
    hello.c = [1,2,3,5,6,3.5]
    puts "I'm 0 and I'm sending this message: #{hello.inspect}"
end


msg = MPI::Comm::WORLD.bcast(hello, 0)
MPI::Comm::WORLD.barrier()

puts "I'm #{myrank} and I got this message: #{msg.inspect}"

