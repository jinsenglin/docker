for n in {1..3}
do
    docker stop "monasca-agent-$n"
    docker rm "monasca-agent-$n"
done
