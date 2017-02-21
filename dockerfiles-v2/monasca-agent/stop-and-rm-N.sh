for n in {1..2}
do
    docker stop "monasca-agent-$n"
    docker rm "monasca-agent-$n"
done
