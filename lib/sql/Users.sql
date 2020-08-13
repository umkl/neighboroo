select *
from nbNeighborooUsers
right join nbUsers
on nbUsers.nickname = nbNeighborooUsers.nbUsers_nickname;


