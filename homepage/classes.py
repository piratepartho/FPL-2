
from gc import get_count
from django.db import connection

class Player:
    name=None
    position=None
    cost=None
    id=None
    def __init__(self,id,name,position,cost):
        self.id=id
        self.name=name
        self.position=position
        self.cost=cost

class Team:
    player=None
    total_cost=None
    name=None
    def __init__(self):
        self.player=[]
        self.total_cost=0
    
    def setTeamName(self,name):
        self.name=name
    
    #if position limit is reached return False
    def okPosition(self,position):
        cnt=0
        for p in self.player:
            if p.position==position:
                cnt+=1
        if position=='Goalkeeper' and cnt<=1:
            return True
        if position=='Midfielder' and cnt<=3:
            return True
        if position=='Defender' and cnt<=4:
            return True
        if position=='Forward' and cnt<=3:
            return True
        return False
    
    #checks if the player already in Team. If yes, return True
    def isSamePlayer(self,id):
        for p in self.player:
            if p.id==id:
                return True
        return False

    def addPlayer(self,id,name,position,cost):
        if(len(self.player)>=11):
            return 'Limit Reached'
        if not self.okPosition(position):
            return f'{position} Maxed'
        if self.isSamePlayer(id):
            return f'Already Added'
        
        self.player.append(Player(id,name,position,cost))
        self.total_cost+=cost
        return 'Player Added'
        


    

class User:
    is_authenticated=False
    username=None
    id=None
    team_name=None
    team=None

    def __init__(self,username=None,id=None,auth=False):
        self.username=username
        self.id=id
        self.is_authenticated=auth
        self.team=Team()


    