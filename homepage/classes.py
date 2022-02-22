
from gc import get_count
from django.db import connection
from django.shortcuts import redirect

def customcmp(x):
        if(x.position=='Goalkeeper'):
            return 1,x.cost
        elif x.position=='Defender':
            return 2,x.cost
        elif x.position=='Midfielder':
            return 3,x.cost
        else: 
            return 4,x.cost

class Player:
    name=None
    position=None
    cost=None
    id=None
    is_captain=None
    def __init__(self,id,name,position,cost,is_captain):
        self.id=id
        self.name=name
        self.position=position
        self.cost=cost
        self.is_captain=is_captain

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
        if position=='Goalkeeper' and cnt<1:
            return True
        if position=='Midfielder' and cnt<3:
            return True
        if position=='Defender' and cnt<4:
            return True
        if position=='Forward' and cnt<3:
            return True
        return False
    
    #checks if the player already in Team. If yes, return True
    def isSamePlayer(self,id):
        for p in self.player:
            if p.id==id:
                return True
        return False


    def addPlayer(self,id,name,position,cost,captain):
        if(len(self.player)>=11):
            return 'Limit Reached'
        if not self.okPosition(position):
            return f'{position} Maxed'
        if self.isSamePlayer(id):
            return f'Already Added'
        if self.total_cost+cost>70:
            return f'Not Enough Money'
        
        self.player.append(Player(id,name,position,cost,captain))
        self.total_cost+=cost
        #sort the players
        self.player.sort(key=customcmp)
        return 'Player Added'
        
    def deletePlayer(self,id):
        for p in self.player:
            if p.id==id:
                self.total_cost-=p.cost
                self.player.remove(p)
                return True
        return False
    

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



class Stat:
    minute=None
    gw=None
    point=None
    assist=None
    gs =None
    gc =None
    own =None
    yellow =None
    red =None
    save =None
    penMiss =None
    penSave=None
    def __init__(self,gw,point,minute,gs,gc,assist,own,y,r,save,penSave,penMiss):
        self.gw=gw
        self.point=point
        self.minute=minute
        self.assist=assist
        self.gs=gs
        self.gc=gc
        self.own=own
        self.yellow=y
        self.red=r
        self.save=save
        self.penSave=penSave
        self.penMiss=penMiss