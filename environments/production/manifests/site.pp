node default{

include demofile
#notify { 'hello world':}

}

node node1 {

user { 'user1':
         ensure =>  present,
uid => 1001,
password => '$6$QBYKUbDY$HoKdJaIqlcmGvT3YD/5lRKJ7.AjnyU1H7UTB1K706YwA.hgo0CSgfWFz3CoK8cZzVWMyznTuOB2nFOQU/STGf'

}
}
node node2 {

user { 'user2':
         ensure =>  present,
uid => 1002,
password => '$6$QBYKUbDY$HoKdJaIqlcmGvT3YD/5lRKJ7.AjnyU1H7UTB1K706YwA.hgo0CSgfWFz3CoK8cZzVWMyznTuOB2nFOQU/STGf'

}
}

