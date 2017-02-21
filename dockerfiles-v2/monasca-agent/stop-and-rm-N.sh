N=2
for n in $(seq 1 $N)
do
    echo stopping $n / $N ...
    docker stop "monasca-agent-$n"
    docker rm "monasca-agent-$n"
done
