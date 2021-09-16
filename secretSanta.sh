participants=(Michael Alice Bob Charlie)


numParticipants=${#participants[@]}
offset=$(($RANDOM%$numParticipants))

indexSender=0
for sender in "${participants[@]}";
do
    relativeIndex=$((indexSender + offset))
    receiverIndex=$((relativeIndex % numParticipants))
    receiver=${participants[$receiverIndex]}

    printf "%s -> %s\n" $sender $receiver
    ((indexSender++))
done