if [ $1 = 'pod' ]
then
        sudo kubectl -n $3 get po --sort-by=.metadata.creationTimestamp |tac| grep $2 | awk {'print $1'}
fi
if [ $1 = 'container' ]
then
        sudo kubectl -n $3 get pods $2 -o jsonpath={.spec.containers[*].name}
fi
if [ $1 = 'deploy' ]
then
        sudo kubectl -n $2 get deploy | awk {'print $1'} | grep -v NAME |sort
fi
if [ $1 = 'image' ]
then
        sudo kubectl -n $2 get deploy $3 -o=jsonpath='{$.spec.template.spec.containers[:1].image}'
fi
