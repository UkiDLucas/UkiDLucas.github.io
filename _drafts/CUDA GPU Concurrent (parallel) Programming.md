#public 
#CUDA 

published: 2023-03-27

updated: 2023-03-29

- GPU

- CUDA

- Julia

- OpenAcc

- OpenCL

- Metal

- jCuda

- PyCUDA>

# CUDA GPU Concurrent (parallel) Programming

C, C++, and Python 3 code running asynchronously using - threads

- queues

- other concurrent programming techniques

- Relevance - CUDA

- OpenCL

- Metal

- OpenAcc

- PyCUDA

- jCuda

- Hardware: - AMD

- Apple

- FPGA

- multi-core CPUs

- Pitfalls of Concurrent Programming - race conditions

- the expected order of thread operations is not followed

- resource contention

- two or more threads attempt to modify the same memory

- deadlock

- one or more processes are blocked by waiting for a resource

- live locks

- two or more processes are stuck in a loop, but cannot finish while waiting for resources

- resource over-utilization

- too few or too many threads, context switching

- memory required is too large

- memory changes too often

- resource under-utilization

- sitting idle

- Semaphore , for all intents and purposes, is an atomic variable that has more than one thread requiring it, which means that a predefined number of threads can use the semaphore to enter a critical section of code. A lock is the more restrictive parent asynchronous mechanism for a single thread to enter a critical section of code. Thus a semaphore is a more relaxed form of lock. Concurrent Programming Algorithms - Dining Philosophers

- multiple processes require the same resources to complete their jobs

- Producer-Consumer

- consumers need to read the data

- in order

- no duplication

- Producers add data in order it needs to be processed

- Sleeping Barber

- customers are waiting

- single barber

- if the barber is sleeping customer should wake him

- If there is no space in the queue, customers are not added

- Data and Code Synchronization

- References - https://www.coursera.org/learn/introduction-to-concurrent-programming/

https://www.coursera.org/learn/introduction-to-concurrent-programming/

- https://cuda.juliagpu.org/stable/

https://cuda.juliagpu.org/stable/

- https://cplusplus.com/

https://cplusplus.com/

- https://www.w3schools.com/cpp/

https://www.w3schools.com/cpp/

- -

---

---