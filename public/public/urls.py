"""public URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from health import views
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/',views.login),
    path('log/',views.log),
    path('hoscat/',views.hoscat),
    path('save/',views.save),
    path('tbldbview/',views.tbldbview),
    path('view/<int:id>',views.view),
    path('remove/<int:id>',views.remove),
    path('hosview/',views.hosview),
    path('hosview2/<int:id>',views.hosview2),
    path('hosremove/<int:id>',views.hosremove),
    path('hosedit/<int:id>',views.hosedit),
    path('hosupdate/<int:id>',views.hosupdate),
    path('staffview/',views.staffview),
    path('staffview2/<int:id>',views.staffview2),
    path('staffremove/<int:id>',views.staffremove),
    path('staffedit/<int:id>',views.staffedit),
    path('staffupdate/<int:id>',views.staffupdate),
    path('labview/',views.labview),

    path('labresultupdate/<int:id>',views.labresultupdate),
    path('doclabresultview/',views.doclabresultview),
    path('doclabresultview2/<int:id>',views.doclabresultview2),
    path('doclabresultmcview/',views.doclabresultmcview),
    path('doclabresultmcview2/<int:id>',views.doclabresultmcview2),
    path('patientview/',views.patientview),
    path('patientview2/<int:id>',views.patientview2),
    path('patientviewmc/',views.patientviewmc),
    path('patientviewmc2/<int:id>',views.patientviewmc2),
    path('referralview/',views.referralview),
    path('referralview2/<int:id>',views.referralview2),
    path('patnotview/',views.patnotview),
    path('patnotview/',views.patnotview),
    path('pubnotview/',views.pubnotview),
    path('pubhosview/',views.pubhosview),
    path('complaintview/',views.complaintview),
    path('complaintview2/<int:id>',views.complaintview2),
    path('index/',views.index),
    path('about-us/',views.about),
    path('contact/',views.contact),
    path('hdep/',views.hdep),
    path('phc/',views.phc),
    path('dh/',views.dh),
    path('mc/',views.mc),
    path('patient/',views.patient),
    path('public/',views.public),
    path('doctorhome/',views.doctorhome), 
    path('doctorhome1/',views.doctorhome1),   
    path('staffhome/',views.staffhome),
    path('labhome/',views.labhome), 
    path('form/',views.form),
    path('hosreg/',views.hosreg),
    path('addhos/',views.addhos),
    path('staffreg/',views.staffreg),
    path('addstaff/',views.addstaff),
    path('labreg/',views.labreg),
    path('addlab/',views.addlab),
    path('notifi/',views.notifi),
    path('addnot/',views.addnot),
    path('patreg/',views.patreg),
    path('addpat/',views.addpat),
    path('opticket/',views.opticket),
    path('addop/',views.addop),
    path('treatment/',views.treatment),
    path('treatmentmc/',views.treatmentmc),
    path('treatpat/',views.treatpat),
    path('treatpat2/',views.treatpat2),
    path('addtreat/',views.addtreat),
    path('addtreatmc/',views.addtreatmc),
    path('labrequest/',views.labrequest),
    path('addlabreq/',views.addlabreq),
    path('labrequestmc/',views.labrequestmc),
    path('addlabreqmc/',views.addlabreqmc),
    path('labresult/<int:id>',views.labresult),
    path('addlabres/',views.addlabres),
    path('diagnosis/',views.diagnosis),
    path('adddiagnosis/',views.adddiagnosis),
    path('diagnosismc/',views.diagnosismc),
    path('adddiagnosismc/',views.adddiagnosismc),
    path('diagnosisview/',views.diagnosisview),
    path('labrequestview/',views.labrequestview),
    path('referral/',views.referral),
    path('addreferral/',views.addreferral),
    path('complaint/',views.complaint),
    path('addcomplaint/',views.addcomplaint),
    path('rephos/',views.rephos),
    path('reppat/',views.reppat),
    path('repdia/',views.repdia),
    path('repref/',views.repref),
    path('repreq/',views.repreq),
    path('repres/',views.repres),
    path('reptreat/',views.reptreat),
    path('changepwd/',views.changepwd),
    path('password/',views.password),
    path('changepwd1/',views.changepwd1),
    path('password2/',views.password2),
    path('logout/',views.logout),
    path('hosrep/',views.hosrep),
    path('hosrepview/',views.hosrepview),










    
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


