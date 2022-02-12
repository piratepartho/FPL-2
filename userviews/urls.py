from django.urls import path
import userviews.views

urlpatterns=[
    path('',userviews.views.loginView,name='userLoginPage'),
    path('home/',userviews.views.homePageView,name='userHomePage'),
    path('home/logout/',userviews.views.logout,name='userLogoutPage'),
    path('home/createUser/',userviews.views.createUserView,name='createUserPage'),

    path('home/<int:user_id>/myTeam/',userviews.views.myTeamView,name='userTeamPage'),
    path('home/<int:user_id>/myTeam/addPlayer/',userviews.views.addPlayerView,name='userPlayerAddPage'),
]

htmx_urlpatterns=[
    path('home/<int:user_id>/myTeam/addPlayer/getPlayerData/',userviews.views.getPlayerData,name='userPlayerAddPage'),
    path('home/<int:user_id>/addToUser/<int:player_id>',userviews.views.addToUserTeam,name='addToUserTeam'),
    #path('home/<int:user_id>/deleteFromUser/<int:player_id>',userviews.views.addToUserTeam,name='addToUserTeam'),
    path('deletePlayer/<int:user_id>/<int:player_id>/',userviews.views.deletePlayerView,name='deletePlayer'),
]

urlpatterns+=htmx_urlpatterns