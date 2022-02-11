from django.db import connection

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
        self.team={'cost':0}

    def setTeamName(self,team_name):
        self.team_name=team_name

    def getPlayerCount(self):
        cnt=0
        for p in self.team.keys():
            if type(p) is int:
                cnt+=1
        print(cnt)
        return cnt
    
    def insertPlayer(self,player_id,player_pos,player_cost):
        if(self.getPlayerCount()>=11):
            return
        self.team[1]={'cost':player_cost,'id':player_id,'position':player_pos}
        self.team['cost']=player_cost


    