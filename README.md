###DES Decryption Algorithm optimised using multiple Pragmas

-The base line Design is verified using DES encrypt algorithm.

-DES Encrypt is only used to verify our C simulation and C/RTL co-simulation results.

-Baseline design has average latency = 5109

##Different Pragmas used:

-Loop Unrolling

-Loop Pipelining 

-Task Level Pipelining (Dataflow & Stream Pragma)

-Loop Partition

-Array Map

-Loop Flatten & Loop Merge

-Kernel Optimisation (Allocation & Resource Pragma)

>Combinations of these Pragmas have also been shown to show how latency and resource utilisation can be optimised.
