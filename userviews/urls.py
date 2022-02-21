from django.urls import path
import userviews.views

urlpatterns=[
    path('',userviews.views.loginView,name='userLoginPage'),
    path('home/',userviews.views.homePageView,name='userHomePage'),
    path('home/logout/',userviews.views.logout,name='userLogoutPage'),
    path('home/createUser/',userviews.views.createUserView,name='createUserPage'),

    path('home/<int:user_id>/myTeam/',userviews.views.myTeamView,name='userTeamPage'),
    path('home/<int:user_id>/myTeam/addPlayer/',userviews.views.addPlayerView,name='userPlayerAddPage'),

    path('home/<int:user_id>/league/',userviews.views.leagueView,name='userLeague'),
    path('createLeague/',userviews.views.createLeagueView,name='createLeague'),

    #particular league info urls
    path('<int:user_id>/<int:leagueCode>/show/',userviews.views.showLeague,name='showLeague'),
    path('leaveLeague/<int:user_id>/<int:leagueCode>/',userviews.views.leaveLeague,name='leaveLeague'),
]

htmx_urlpatterns=[
    path('home/<int:user_id>/myTeam/addPlayer/getPlayerData/',userviews.views.getPlayerData,name='userPlayerAddPage'),
    path('home/<int:user_id>/addToUser/<int:player_id>',userviews.views.addToUserTeam,name='addToUserTeam'),
    path('deletePlayer/<int:user_id>/<int:player_id>/',userviews.views.deletePlayerView,name='deletePlayer'),
    path('showLeagueList/<int:user_id>/',userviews.views.showUserLeague,name='showUserLeague'),
    path('joinLeague/<int:user_id>/<int:leagueCode>/',userviews.views.joinLeague,name='joinLeague'),
    path('selectCaptain/',userviews.views.captainView,name='selectCaptain'),
]

urlpatterns+=htmx_urlpatterns