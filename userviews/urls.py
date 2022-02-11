from django.urls import path
import userviews.views

urlpatterns=[
    path('',userviews.views.loginView,name='userLoginPage'),
    path('home/',userviews.views.homePageView,name='userHomePage'),
    path('home/logout/',userviews.views.logout,name='userLogoutPage'),
    path('home/createUser/',userviews.views.createUserView,name='createUserPage'),

    path('home/<int:user_id>/myTeam/',userviews.views.myTeamView,name='userTeamPage'),
]