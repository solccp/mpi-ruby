printf("Hello, I am %d of %d\n", MPI::Comm::WORLD.rank(), MPI::Comm::WORLD.size())
MPI::Comm::WORLD.barrier()

myrank = MPI::Comm::WORLD.rank()

if myrank == 0
hello = "Hello"
    printf("I'm 0 and I'm sending this message: '%s'\n", hello)
end

msg = MPI::Comm::WORLD.bcast(hello, 0)

MPI::Comm::WORLD.barrier()

printf("I'm %d and I got this message: '%s'\n", myrank, msg)

