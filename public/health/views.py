from django.shortcuts import render,redirect
from django.contrib.auth import authenticate,login,logout
import datetime
from health.models import tbl_login
from django.http import HttpResponse
from django.conf import settings
from django.core.files.storage import FileSystemStorage
from health.models import tbl_hos_cat
from health.models import tbl_hos_man
from health.models import tbl_staff
from health.models import tbl_lab
from health.models import tbl_notification
from health.models import tbl_patient
from health.models import tbl_opticket
from health.models import tbl_treatment
from health.models import tbl_lab_test_request
from health.models import tbl_lab_test_result
from health.models import tbl_messages
from health.models import tbl_complaints
from health.models import tbl_referral
from health.models import tbl_diagnosis
from health.models import tbl_mcpatient
from django.core.mail import send_mail
# Create your views here.
def login(request):
        return render(request,"login.html")
def admin1(request):
        return render(request,"admin1.html")
def log(request):
        if request.method=='POST':
                info=tbl_login.objects.all()
                un=request.POST.get('username')
                pwd=request.POST.get('password')
                flag=0
                
                for i in info:
                        if un==i.username and pwd==i.password:
                                type=i.category
                                flag=1
                                if type=="admin":
                                        return redirect('/hdep')     
                                elif type=="patient":
                                        pa=tbl_patient.objects.get(pat_email=un)
                                        pid=pa.id
                                        request.session['pid']=pid
                                        return redirect('/patient')               
                                elif type=="doctor":
                                        st=tbl_staff.objects.get(staff_email=un)
                                        sid=st.id
                                        hid1=st.category_id
                                        hid=st.hospital_id
                                        hcat=tbl_hos_cat.objects.get(id=hid1)
                                        cat=hcat.category_name
                                        request.session['sid']=sid
                                        request.session['hid']=hid
                                        request.session['cat']=cat
                                        request.session['hid1']=hid1
                                        print("podaaa")
                                        if cat=="Medical_Collage":
                                                return redirect('/doctorhome1')  
                                        else:        
                                                return redirect('/doctorhome')
                                elif type=="lab":
                                        st=tbl_staff.objects.get(staff_email=un)
                                        sid=st.id
                                        hid1=st.category_id
                                        hid=st.hospital_id
                                        hcat=tbl_hos_cat.objects.get(id=hid1)
                                        cat=hcat.category_name
                                        request.session['sid']=sid
                                        request.session['hid']=hid
                                        request.session['cat']=cat
                                        request.session['hid1']=hid1
                                        print("daaa")
                                        return redirect('/labhome') 
                                
                                elif type=="office":
                                        st=tbl_staff.objects.get(staff_email=un)
                                        sid=st.id
                                        hid1=st.category_id
                                        hid=st.hospital_id
                                        hcat=tbl_hos_cat.objects.get(id=hid1)
                                        cat=hcat.category_name
                                        request.session['sid']=sid
                                        request.session['hid']=hid
                                        request.session['cat']=cat
                                        request.session['hid1']=hid1
                                        return redirect('/staffhome')  
                                
                                else:
                                        return HttpResponse("invalid acct type")
                if flag==0:
                        return HttpResponse("user not exist")        
def hoscat(request):
        return render(request,"hoscat.html")
def save(request):
    if request.method=='POST':
        hc=tbl_hos_cat()
        hc.category_name=request.POST.get('select')
        hc.description=request.POST.get('description')
        hc.save()
        return redirect('/hoscat')
    else:
        return HttpResponse("Invalid data type")
def tbldbview(request):
        obj=tbl_hos_cat.objects.all()
        return render(request,'tbldbview.html',{'hs':obj})  
def view(request,id):
        regf=tbl_hos_cat.objects.get(id=id)
        return render(request,'view.html',{'hs':regf}) 
def remove(request,id):
        regf=tbl_hos_cat.objects.get(id=id)
        regf.delete()
        return redirect('/tbldbview')
def hosview(request):
        obj=tbl_hos_man.objects.all()
        return render(request,'hosview.html',{'hs':obj})  
def hosview2(request,id):
        regf=tbl_hos_man.objects.get(id=id)
        return render(request,'hosview2.html',{'hs':regf}) 
def hosremove(request,id):
        regf=tbl_hos_man.objects.get(id=id)
        regf.delete()
        return redirect('/hosview')
def hosedit(request,id):
        regf=tbl_hos_man.objects.get(id=id)
        return render(request,'hosedit.html',{'hs':regf}) 
def hosupdate(request,id):
        regf=tbl_hos_man.objects.get(id=id)
        if request.method=='POST':
                regf.category_id_name=request.POST.get('select') 
                regf.hos_name=request.POST.get('name') 
                regf.hos_address=request.POST.get('address')
                regf.hos_email=request.POST.get('email') 
                regf.hos_phone=request.POST.get('number')
                regf.hos_local_body=request.POST.get('local_body')
                regf.save()
                return render(request,'hdep.html')
        else:
                return HttpResponse("Error")
def staffview(request):
        obj=tbl_staff.objects.all()
        return render(request,'staffview.html',{'hs':obj})             















              
def labview(request):
        obj=tbl_lab.objects.all()
        return render(request,'labview.html',{'hs':obj})  
def labview2(request,id):
        regf=tbl_lab.objects.get(id=id)
        return render(request,'labview2.html',{'hs':regf}) 
def labremove(request,id):
        regf=tbl_lab.objects.get(id=id)
        regf.delete()
        return redirect('/labview')
def notview(request):
        obj=tbl_notification.objects.all()
        return render(request,'notview.html',{'hs':obj})  
def notview2(request,id):
        regf=tbl_notification.objects.get(id=id)
        return render(request,'notview2.html',{'hs':regf}) 
def notremove(request,id):
        regf=tbl_notification.objects.get(id=id)
        regf.delete()
        return redirect('/notview')
def labresultview(request):
        obj=tbl_lab_test_result.objects.all()
        return render(request,'labresultview.html',{'hs':obj})  
def labresultview2(request,id):
        regf=tbl_lab_test_result.objects.get(id=id)
        return render(request,'labresultview2.html',{'hs':regf}) 
def labresultremove(request,id):
        regf=tbl_lab_test_result.objects.get(id=id)
        regf.delete()
        return redirect('/labresultview')
def labresultedit(request,id):
        regf=tbl_lab_test_result.objects.get(id=id)
        return render(request,'labresultedit.html',{'hs':regf}) 
def labresultupdate(request,id):
    regf=tbl_lab_test_result.objects.get(id=id)
    if request.method=='POST':
       regf.lab_id=request.POST.get('lab') 
       regf.lab_test_request_id=request.POST.get('request') 
       regf.patient_id=request.POST.get('patient') 
       regf.doctor_id=request.POST.get('doctor') 
       regf.treatment_id=request.POST.get('treatment')
       regf.test_name_id=request.POST.get('testname') 
       regf.lab_result=request.POST.get('result') 
       regf.save()
       return render(request,'labhome.html')
    else:
         return HttpResponse("Error")
def doclabresultview(request):
        sid=request.session['sid']
        obj=tbl_lab_test_result.objects.filter(doctor_id=sid)
        return render(request,'doclabresultview.html',{'hs':obj})  
def doclabresultview2(request,id):
        regf=tbl_lab_test_result.objects.get(id=id)
        return render(request,'doclabresultview2.html',{'hs':regf}) 
def doclabresultmcview(request):
        sid=request.session['sid']
        obj=tbl_lab_test_result.objects.filter(doctor_id=sid)
        return render(request,'doclabresultmcview.html',{'hs':obj})  
def doclabresultmcview2(request,id):
        regf=tbl_lab_test_result.objects.get(id=id)
        return render(request,'doclabresultmcview2.html',{'hs':regf}) 
def patientview(request):
        hid=request.session['hid']
        obj=tbl_patient.objects.filter(hospital_id=hid)
        return render(request,'patientview.html',{'hs':obj})  
def patientview2(request,id):
        regf=tbl_patient.objects.get(id=id)
        return render(request,'patientview2.html',{'hs':regf}) 
def patientviewmc(request):
        hid=request.session['hid']
        obj=tbl_patient.objects.filter(hospital_id=hid)
        return render(request,'patientviewmc.html',{'hs':obj})  
def patientviewmc2(request,id):
        regf=tbl_patient.objects.get(id=id)
        return render(request,'patientviewmc2.html',{'hs':regf}) 
def patnotview(request):
        obj=tbl_notification.objects.all()
        return render(request,'patnotview.html',{'hs':obj}) 
def pubnotview(request):
        obj=tbl_notification.objects.all()
        return render(request,'pubnotview.html',{'hs':obj}) 
def pubhosview(request):
        obj=tbl_hos_man.objects.all()
        return render(request,'pubhosview.html',{'hs':obj}) 
def referralview(request):
        a=request.session['sid']
        b=request.session['hid']
        obj=tbl_referral.objects.filter(referred_hos_id=b)
        return render(request,'referralview.html',{'hs':obj})  
def referralview2(request,id):
        regf=tbl_referral.objects.get(id=id)
        return render(request,'referralview2.html',{'hs':regf}) 
def complaintview(request):
        obj=tbl_complaints.objects.all()
        return render(request,'complaintview.html',{'hs':obj}) 
def diagnosisview(request):
        pid=request.session['pid']
        obj=tbl_diagnosis.objects.get(patient_id=pid)
        a=obj.lab_test_result_id
        b=tbl_lab_test_result.objects.get(id=a)
        c=b.lab_result
        d=obj.doctor_id
        e=tbl_staff.objects.get(id=d)
        k=e.staff_name
        f=obj.hospital_id
        g=tbl_hos_man.objects.get(id=f)
        l=g.hos_name
        return render(request,'diagnosisview.html',{'hs':obj,'c':c,'k':k,'l':l})  
def labrequestview(request):
        hid=request.session['hid']
        obj=tbl_lab_test_request.objects.filter(hospital_id=hid)
        return render(request,'labrequestview.html',{'hs':obj})  
def complaintview2(request,id):
        regf=tbl_complaints.objects.get(id=id)
        return render(request,'complaintview2.html',{'hs':regf}) 
def index(request):
        return render(request,"index.html")    
def about(request):
        return render(request,"about-us.html")  
def contact(request):
        return render(request,"contact.html")                
def hdep(request):
        return render(request,"hdep.html")      
def phc(request):
        return render(request,"phc.html")      
def dh(request):
        return render(request,"dh.html")      
def mc(request):
        return render(request,"mc.html")      
def patient(request):
        a=request.session['pid']
        b=tbl_patient.objects.get(id=a)
        c=b.pat_name
        return render(request,"patient.html",{'ob':c})      
def public(request):
        return render(request,"public.html")  
def doctorhome(request):
        x=request.session['hid']
        a=request.session['sid']
        k=request.session['hid1']
        g=tbl_hos_cat.objects.get(id=k)
        b=tbl_staff.objects.get(id=a)
        m=tbl_hos_man.objects.get(id=x)
        cat=g.category_name
        n=m.hos_name
        c=b.staff_name
        return render(request,"doctorhome.html",{'ob':c,'ob2':n,'ob3':cat}) 
def doctorhome1(request):
        x=request.session['hid']
        a=request.session['sid']
        k=request.session['hid1']
        g=tbl_hos_cat.objects.get(id=k)
        b=tbl_staff.objects.get(id=a)
        m=tbl_hos_man.objects.get(id=x)
        cat=g.category_name
        n=m.hos_name
        c=b.staff_name
        return render(request,"doctorhome1.html",{'ob':c,'ob2':n,'ob3':cat}) 
def staffhome(request):
        x=request.session['hid']
        a=request.session['sid']
        k=request.session['hid1']
        g=tbl_hos_cat.objects.get(id=k)
        b=tbl_staff.objects.get(id=a)
        m=tbl_hos_man.objects.get(id=x)
        cat=g.category_name
        n=m.hos_name
        c=b.staff_name
        return render(request,"staffhome.html",{'ob':c,'ob2':n,'ob3':cat}) 
def labhome(request):
        x=request.session['hid']
        a=request.session['sid']
        k=request.session['hid1']
        g=tbl_hos_cat.objects.get(id=k)
        b=tbl_staff.objects.get(id=a)
        m=tbl_hos_man.objects.get(id=x)
        cat=g.category_name
        n=m.hos_name
        c=b.staff_name
        return render(request,"labhome.html",{'ob':c,'ob2':n,'ob3':cat}) 
def form(request):
        return render(request,"form.html")        
def hosreg(request):
        obj=tbl_hos_cat.objects.all()
        return render(request,'hosreg.html',{'ob':obj})  
def addhos(request):
    if request.method=='POST':
        ob=tbl_hos_man()
        ob.category_id=request.POST.get('select')
        ob.hos_name=request.POST.get('name')
        ob.hos_address=request.POST.get('address')
        ob.hos_email=request.POST.get('email') 
        ob.hos_phone=request.POST.get('number')
        ob.hos_local_body=request.POST.get('local_body')
        ob.save()
        return redirect('/hosreg')
    else:
        return HttpResponse("Invalid data type")
def staffreg(request):
        obj=tbl_hos_man.objects.all()
        obj1=tbl_hos_cat.objects.all()
        return render(request,'staffreg.html',{'ob1':obj,'ob2':obj1}) 
def addstaff(request):
    if request.method == 'POST':
        photo = request.FILES['photo']
        fs = FileSystemStorage()
        filename = fs.save(photo.name, photo)
        uploaded_file_url = fs.url(filename)
        ob=tbl_staff()
        ob.category_id=request.POST.get('select')
        ob.hospital_id=request.POST.get('select1')
        ob.staff_role=request.POST.get('role')
        ob.staff_specialization=request.POST.get('specialization') 
        ob.staff_name=request.POST.get('name')
        ob.staff_address=request.POST.get('address')
        ob.staff_email=request.POST.get('email')
        ob.staff_phone=request.POST.get('number')
        ob.staff_photo=uploaded_file_url
        ob.save()

        lg=tbl_login()
        lg.username=ob.staff_email
        lg.password=ob.staff_phone
        lg.category=ob.staff_role
        lg.save()
        # send_mail('you are registered','now u can login to your page with username and password as your email id and phone number respectively','mkshohan@gmail.com',[ob.staff_email,])
        return redirect('/staffreg')
    else:
        return HttpResponse("Invalid data type")

def labreg(request):
         obj=tbl_hos_man.objects.all()
         obj1=tbl_hos_cat.objects.all()
         return render(request,'labreg.html',{'ob':obj,'ob1':obj1})  
def addlab(request):
    if request.method=='POST':
        ob=tbl_lab()
        ob.hospital_id=request.POST.get('select')
        ob.category_id=request.POST.get('select1')
        ob.lab_phone=request.POST.get('number')
        ob.save()
        return redirect('/labreg')
    else:
        return HttpResponse("Invalid data type")
def notifi(request):
        return render(request,"notifi.html")  
def addnot(request):
    if request.method=='POST':
        ob=tbl_notification()
        ob.notification=request.POST.get('notification')
        now=datetime.datetime.now()
        time1=now.strftime("%y-%m-%d")
        ob.noti_date=time1
        ob.noti_status='not verified'
        ob.save()
        return redirect('/notifi')
    else:
        return HttpResponse("Invalid data type")
def patreg(request):
        obj=request.session['hid']
        return render(request,'patreg.html',{'ob':obj})  
def addpat(request):
    if request.method == 'POST':
        photo = request.FILES['photo']
        fs = FileSystemStorage()
        filename = fs.save(photo.name, photo)
        uploaded_file_url = fs.url(filename)
        ob=tbl_patient()
        ob.hospital_id=request.POST.get('select')
        ob.pat_name=request.POST.get('name')
        ob.pat_address=request.POST.get('address') 
        ob.pat_gender=request.POST.get('gender')
        ob.pat_email=request.POST.get('email')
        ob.pat_phone=request.POST.get('number')
        ob.pat_dob=request.POST.get('date')
        ob.pat_age=request.POST.get('age')
        ob.pat_photo=uploaded_file_url
        ob.save()

        lg=tbl_login()
        lg.username=ob.pat_email
        lg.password=ob.pat_phone
        lg.category='patient'
        lg.save()
        # send_mail('you are registered','now u can login to your page with username and password as your email id and phone number respectively','mkshohan@gmail.com',[ob.pat_email,])
        return redirect('/patreg')
    else:
        return HttpResponse("failed")
def opticket(request):
        obj=request.session['hid']
        cat=request.session['cat']
        if cat=="Medical_Collage":
                obj1=tbl_patient.objects.all()
        else:
                obj1=tbl_patient.objects.filter(hospital_id=obj)

        obj2=tbl_staff.objects.filter(hospital_id=obj).filter(staff_role='doctor')
        return render(request,'opticket.html',{'ob':obj,'ob1':obj1,'ob2':obj2}) 
def addop(request):
    if request.method=='POST':
        ob=tbl_opticket()
        ob.hospital_id=request.POST.get('select1')
        ob.patient_id=request.POST.get('select2')
        ob.doctor_id=request.POST.get('select3') 
        now=datetime.datetime.now()
        time1=now.strftime("%y-%m-%d")
        ob.op_date=time1
        ob.save()
        return redirect('/opticket')
    else:
        return HttpResponse("Invalid data type")
def treatment(request):
        obj=request.session['hid']
        obj2= request.session['sid']
        obj3=tbl_opticket.objects.filter(doctor_id=obj2)
        return render(request,'treatment.html',{'ob':obj,'ob2':obj2,'ob3':obj3}) 
def treatmentmc(request):
        
        obj=request.session['hid']
        obj2= request.session['sid']
        obj3=tbl_opticket.objects.filter(doctor_id=obj2)
        return render(request,'treatmentmc.html',{'ob':obj,'ob2':obj2,'ob3':obj3}) 
def treatpat(request):
        obj=request.session['hid']
        obj2= request.session['sid']
        opno=request.POST.get('select4')
        opt=tbl_opticket.objects.get(id=opno)
        pid=opt.patient_id
        pat=tbl_patient.objects.get(id=pid)
        c=tbl_referral.objects.filter(patient_id=pat.id).count()
        print(c)
        if c==0:
                dv="nil"
                rd="nil"
        else:
                ref=tbl_referral.objects.get(patient_id=pat.id)
                dv=ref.doctor_views
                rd=ref.ref_date
        return render(request,'treatpat.html',{'hs':pat,'hss1':dv,'hss2':rd,'hsss':opt,'ob':obj,'ob2':obj2}) 
def treatpat2(request):
        obj=request.session['hid']
        obj2= request.session['sid']
        opno=request.POST.get('select4')
        opt=tbl_opticket.objects.get(id=opno)
        pid=opt.patient_id
        pat=tbl_patient.objects.get(id=pid)
        return render(request,'treatpat2.html',{'hs':pat,'hsss':opt,'ob':obj,'ob2':obj2}) 
def addtreat(request):
    if request.method=='POST':
        ob=tbl_treatment()
        ob.hospital_id=request.POST.get('select1')
        ob.doctor_id=request.POST.get('select3') 
        ob.opticket_id=request.POST.get('select4')
        opt=tbl_opticket.objects.get(id=ob.opticket_id)
        ob.patient_id=opt.patient_id
        pt=tbl_patient.objects.get(id=ob.patient_id)
        pname=pt.pat_name
        ob.patient_name=pname
        ob.diagnosis=request.POST.get('diagnosis')
        ob.save()
        return redirect('/treatment')
    else:
        return HttpResponse("Invalid data type")
def addtreatmc(request):
    if request.method=='POST':
        ob=tbl_treatment()
        ob.hospital_id=request.POST.get('select1')
        ob.doctor_id=request.POST.get('select3') 
        ob.opticket_id=request.POST.get('select4')
        opt=tbl_opticket.objects.get(id=ob.opticket_id)
        ob.patient_id=opt.patient_id
        pt=tbl_patient.objects.get(id=ob.patient_id)
        pname=pt.pat_name
        ob.patient_name=pname
        ob.diagnosis=request.POST.get('diagnosis')
        ob.save()
        return redirect('/treatmentmc')
    else:
        return HttpResponse("Invalid data type")
def labrequest(request):
        obj=request.session['hid']
        obj2= request.session['sid']
        obj1=tbl_opticket.objects.filter(doctor_id=obj2)
        obj3=tbl_treatment.objects.filter(doctor_id=obj2)
        obj4=tbl_lab.objects.filter(hospital_id=obj)
        return render(request,'labrequest.html',{'ob':obj,'ob1':obj1,'ob2':obj2,'ob3':obj3,'ob4':obj4}) 
def addlabreq(request):
    if request.method=='POST':
        ob=tbl_lab_test_request()
        ob.lab_id=request.POST.get('select5')
        ob.hospital_id=request.POST.get('select1')
        ob.treatment_id=request.POST.get('select4')
        trt=tbl_treatment.objects.get(id=ob.treatment_id)
        ob.opticket_id=trt.opticket_id
        ob.doctor_id=request.POST.get('select3') 
        ob.test_name=request.POST.get('testname')
        ob.save()
        return redirect('/labrequest')
    else:
        return HttpResponse("Invalid data type")
def labrequestmc(request):
        obj=request.session['hid']
        obj2= request.session['sid']
        obj1=tbl_opticket.objects.filter(doctor_id=obj2)
        obj3=tbl_treatment.objects.filter(doctor_id=obj2)
        obj4=tbl_lab.objects.filter(hospital_id=obj)
        return render(request,'labrequestmc.html',{'ob':obj,'ob1':obj1,'ob2':obj2,'ob3':obj3,'ob4':obj4}) 
def addlabreqmc(request):
    if request.method=='POST':
        ob=tbl_lab_test_request()
        ob.lab_id=request.POST.get('select5')
        ob.hospital_id=request.POST.get('select1')
        ob.treatment_id=request.POST.get('select4')
        trt=tbl_treatment.objects.get(id=ob.treatment_id)
        ob.opticket_id=trt.opticket_id
        ob.doctor_id=request.POST.get('select3')
        ob.test_name=request.POST.get('testname')
        ob.save()
        return redirect('/labrequestmc')
    else:
        return HttpResponse("Invalid data type")
def labresult(request,id):
        regf=tbl_lab_test_request.objects.get(id=id)
        return render(request,'labresult.html',{'hs':regf}) 
def addlabres(request):
    if request.method=='POST':
        ob=tbl_lab_test_result()
        ob.lab_id=request.POST.get('select5')
        ob.test_name=request.POST.get('select1')
        ob.opticket_id=request.POST.get('select2')
        ob.doctor_id=request.POST.get('select3') 
        ob.treatment_id=request.POST.get('select4')
        ob.lab_test_request_id=request.POST.get('select6')
        ob.lab_result=request.POST.get('testresult')
        ob.save()
        return redirect('/labrequestview')
    else:
        return HttpResponse("Invalid data type")
def diagnosis(request):
        obj=request.session['hid']
        obj2=request.session['sid']
        obj5=tbl_opticket.objects.filter(doctor_id=obj2)
        obj4=tbl_lab_test_result.objects.filter(doctor_id=obj2)
        obj3=tbl_treatment.objects.filter(doctor_id=obj2)
        return render(request,'diagnosis.html',{'ob':obj,'ob2':obj2,'ob3':obj3,'ob4':obj4,'ob5':obj5}) 
def adddiagnosis(request):
    if request.method=='POST':
        ob=tbl_diagnosis()
        ob.hospital_id=request.POST.get('select1')
        ob.doctor_id=request.POST.get('select3') 
        ob.treatment_id=request.POST.get('select4')
        trt=tbl_treatment.objects.get(id=ob.treatment_id)
        ob.opticket_id=trt.opticket_id
        opt=tbl_opticket.objects.get(id=ob.opticket_id)
        ob.patient_id=opt.patient_id
        pt=tbl_patient.objects.get(id=ob.patient_id)
        pname=pt.pat_name
        ob.patient_name=pname
        ob.lab_test_result_id=request.POST.get('select6')
        ob.diagnosis1=request.POST.get('diagnosis1')
        ob.medicines=request.POST.get('medicines')
        ob.save()
        return redirect('/diagnosis')
    else:
        return HttpResponse("Invalid data type")
def diagnosismc(request):
        obj=request.session['hid']
        obj2=request.session['sid']
        obj3=tbl_opticket.objects.filter(doctor_id=obj2)
        obj4=tbl_lab_test_result.objects.filter(doctor_id=obj2)
        obj5=tbl_treatment.objects.filter(doctor_id=obj2)
        return render(request,'diagnosismc.html',{'ob':obj,'ob2':obj2,'ob3':obj3,'ob4':obj4,'ob5':obj5}) 
def adddiagnosismc(request):
    if request.method=='POST':
        ob=tbl_diagnosis()
        ob.hospital_id=request.POST.get('select1')
        ob.doctor_id=request.POST.get('select3') 
        ob.treatment_id=request.POST.get('select4')
        trt=tbl_treatment.objects.get(id=ob.treatment_id)
        ob.opticket_id=trt.opticket_id
        opt=tbl_opticket.objects.get(id=ob.opticket_id)
        ob.patient_id=opt.patient_id
        pt=tbl_patient.objects.get(id=ob.patient_id)
        pname=pt.pat_name
        ob.patient_name=pname
        ob.lab_test_result_id=request.POST.get('select6')
        ob.diagnosis1=request.POST.get('diagnosis1')
        ob.medicines=request.POST.get('medicines')
        ob.save()
        return redirect('/diagnosismc')
    else:
        return HttpResponse("Invalid data type")
def referral(request):
        obj=request.session['hid']
        obj2= request.session['sid']
        obj1=tbl_opticket.objects.filter(doctor_id=obj2)
        obj3=tbl_hos_man.objects.all()
        return render(request,'referral.html',{'ob':obj,'ob1':obj1,'ob2':obj2,'ob3':obj3}) 
def addreferral(request):
    if request.method=='POST':
        ob=tbl_referral()
        ob.hospital_id=request.POST.get('select1')
        a=request.POST.get('select2')
        b=tbl_opticket.objects.get(id=a)
        c=b.patient_id
        ob.patient_id=c
        ob.doctor_id=request.POST.get('select3') 
        ob.referred_hos_id=request.POST.get('select4')
        ob.doctor_views=request.POST.get('views')
        now=datetime.datetime.now()
        time1=now.strftime("%y-%m-%d")
        ob.ref_date=time1
        ob.save()
        return redirect('/referral')
    else:
        return HttpResponse("Invalid data type")
def complaint(request):
        obj=tbl_hos_man.objects.all()
        obj1=request.session['pid']
        obj2=tbl_staff.objects.all()
        return render(request,'complaint.html',{'ob':obj,'ob1':obj1,'ob2':obj2}) 
def addcomplaint(request):
    if request.method=='POST':
        ob=tbl_complaints()
        ob.hospital_id=request.POST.get('select1')
        ob.patient_id=request.POST.get('select2')
        ob.doctor_id=request.POST.get('select3') 
        ob.complaint=request.POST.get('complaint')
        ob.status='not verified'
        ob.save()
        return redirect('/complaint')
    else:
        return HttpResponse("Invalid data type")
def rephos(request):
        obj=tbl_hos_man.objects.all()
        return render(request,'rephos.html',{'hs':obj})  
def reppat(request):
        obj=tbl_patient.objects.all()
        return render(request,'reppat.html',{'hs':obj})  
def reptreat(request):
        obj=tbl_treatment.objects.all()
        return render(request,'reptreat.html',{'hs':obj})  
def repreq(request):
        obj=tbl_lab_test_request.objects.all()
        return render(request,'repreq.html',{'hs':obj})  
def repdia(request):
        obj=tbl_diagnosis.objects.all()
        return render(request,'repdia.html',{'hs':obj})  
def repres(request):
        obj=tbl_lab_test_result.objects.all()
        return render(request,'repres.html',{'hs':obj})  
def repref(request):
        obj=tbl_referral.objects.all()
        return render(request,'repref.html',{'hs':obj})  
def password(request):
        return render(request,'password.html')  
def changepwd(request):
        sid=request.session['sid']
        st=tbl_staff.objects.get(id=sid)
        st1=st.staff_email
        lg=tbl_login.objects.get(username=st1)
        lg.password=request.POST.get('newpassword')
        lg.save()
        return redirect('/public')
def password2(request):
        return render(request,'password2.html')  
def changepwd1(request):
        pid=request.session['pid']
        pt=tbl_patient.objects.get(id=pid)
        pt1=pt.pat_email
        lg=tbl_login.objects.get(username=pt1)
        lg.password=request.POST.get('newpassword')
        lg.save()
        return redirect('/public')
def logout(request):
        del request.session['sid']
        del request.session['hid']
        del request.session['cat']
        del request.session['hid1'] 
        #del request.session['pid'] 
        return redirect('/login')     
def hosrep(request):
    r=tbl_hos_man.objects.all()
    return render(request,'hosrep.html',{'ob':r})  
# def hosrepview(request):
#     if request.method=='POST':
#         item=request.POST.get('select')
#         r=tb.objects.get(id=item)
#         return render(request,'hosrepview.html',{'ob':r})
def hosrepview(request):
    if request.method=='POST':
        item=request.POST.get('select')
        d=tbl_diagnosis.objects.filter(hospital_id=item)
        return render(request,'hosrepview.html',{'hs':d})  
      


