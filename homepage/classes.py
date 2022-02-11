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
        self.setTeamName=name

    def addPlayer(self,id,name,position,cost):
        if(len(self.player)>=11):
            return
        self.player.append(Player(id,name,position,cost))
        self.total_cost+=cost

    

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


    