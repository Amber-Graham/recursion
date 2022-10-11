#fibonacci sequence using iteration and recursion
#iteration
def fib(n)
  first_num = 0
  second_num = 1
  fib_sequence = []
  while second_num < n do
    first_num, second_num = second_num, first_num + second_num
    fib_sequence << second_num
  end
  fib_sequence
end

#cool one-liner I found on Stack Overflow using a Hash
fib = Hash.new{ |h, k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }

#recursion
def fib_seq(num)
  return [0, 1] if num <= 2
  seq = fib_seq(num - 1)
  seq << seq[-2] + seq[-1]
  return seq
end
