from django.urls import path
import userviews.views

urlpatterns=[
    path('',userviews.views.loginView,name='userLoginPage'),
    path('home/',userviews.views.homePageView,name='userHomePage'),
    path('home/viewUserTeam/<int:user_id>/',userviews.views.userTeamView,name='userTeamPage'),
    path('home/createUserTeam/<int:user_id>',userviews.views.createTeamView,name='userCreateTeamPage'),
    path('home/user/createUser/',userviews.views.createUserView,name='createUserPage'),
    path('home/logout/',userviews.views.logout,name='userLogoutPage'),
]