from django.db import models
import datetime
# Create your models here.
class tbl_login(models.Model):
    username= models.CharField(max_length=30)
    password= models.CharField(max_length=30)
    category=models.CharField(max_length=30)

    class Meta:
        db_table = "tbl_login"
class tbl_hos_cat(models.Model):
    category_name= models.CharField(max_length=30)
    description= models.CharField(max_length=500)


    class Meta:
        db_table = "tbl_hos_cat"
class tbl_hos_man(models.Model):
    category_id= models.IntegerField()
    hos_name= models.CharField(max_length=30)
    hos_address= models.CharField(max_length=500)
    hos_email= models.CharField(max_length=30)
    hos_phone= models.CharField(max_length=30)
    hos_local_body = models.CharField(max_length=30)
    class Meta:
        db_table = "tbl_hos_man"
class tbl_staff(models.Model):
    category_id= models.IntegerField()
    hospital_id= models.IntegerField()
    staff_role= models.CharField(max_length=30)
    staff_specialization= models.CharField(max_length=30)
    staff_name= models.CharField(max_length=30)
    staff_address= models.CharField(max_length=500)
    staff_email= models.CharField(max_length=30)
    staff_phone= models.CharField(max_length=30)
    staff_photo=models.CharField(max_length=500)
    class Meta:
        db_table = "tbl_staff"
# class tbl_lab(models.Model):
#     category_id=  models.IntegerField()
#     hospital_id= models.IntegerField()
#     lab_phone=  models.CharField(max_length=30)
#     class Meta:
#         db_table = "tbl_lab"
# class tbl_notification(models.Model):
#     notification= models.CharField(max_length=900)
#     noti_date= models.CharField(max_length=30)
#     noti_status= models.CharField(max_length=30)
#     class Meta:
#         db_table = "tbl_notification"
class tbl_patient(models.Model):
    hospital_id= models.IntegerField()
    pat_name= models.CharField(max_length=30)
    pat_address= models.CharField(max_length=30)
    pat_gender= models.CharField(max_length=30)
    pat_email= models.CharField(max_length=30)
    pat_phone= models.CharField(max_length=30)
    pat_dob = models.DateField()
    pat_age= models.CharField(max_length=30)
    pat_photo=models.CharField(max_length=500)
    class Meta:
        db_table = "tbl_patient"
class tbl_mcpatient(models.Model):
    hospital_id= models.IntegerField()
    pat_name= models.CharField(max_length=30)
    pat_address= models.CharField(max_length=30)
    pat_gender= models.CharField(max_length=30)
    pat_email= models.CharField(max_length=30)
    pat_phone= models.IntegerField()
    pat_dob = models.DateField()
    pat_photo=models.CharField(max_length=500)
    class Meta:
        db_table = "tbl_mcpatient"
class tbl_opticket(models.Model):
    hospital_id= models.IntegerField()
    patient_id= models.IntegerField()
    doctor_id=models.IntegerField()
    op_date= models.CharField(max_length=30)
    class Meta:
        db_table = "tbl_opticket"
class tbl_treatment(models.Model):
    doctor_id= models.IntegerField()
    patient_id=  models.IntegerField()
    patient_name= models.CharField(max_length=30)
    hospital_id=  models.IntegerField()
    opticket_id=  models.IntegerField()
    diagnosis=  models.CharField(max_length=500)
    class Meta:
        db_table = "tbl_treatment"
class tbl_lab_test_request(models.Model):
    lab_id=models.IntegerField()
    opticket_id=models.CharField(max_length=30)
    doctor_id=models.IntegerField()
    treatment_id=models.IntegerField()
    hospital_id=models.IntegerField()
    test_name=models.CharField(max_length=30)
    class Meta:
        db_table = "tbl_lab_test_request"
class tbl_lab_test_result(models.Model):
    lab_id=models.IntegerField()
    lab_test_request_id=models.IntegerField()
    opticket_id=models.CharField(max_length=30)
    doctor_id=models.IntegerField()
    treatment_id=models.IntegerField()
    test_name = models.CharField(max_length=30)
    lab_result=models.CharField(max_length=500)
    class Meta:
        db_table = "tbl_lab_test_result"
class tbl_diagnosis(models.Model):
    lab_test_result_id=models.CharField(max_length=30)
    patient_id=models.IntegerField()
    patient_name= models.CharField(max_length=30)
    doctor_id=models.IntegerField()
    treatment_id=models.IntegerField()
    opticket_id=models.IntegerField()
    hospital_id=models.IntegerField()
    diagnosis1=models.CharField(max_length=500)
    medicines=models.CharField(max_length=500)
    class Meta:
        db_table = "tbl_diagnosis"
class tbl_messages(models.Model):
    patient_id=models.IntegerField()
    doctor_id=models.IntegerField()
    hospital_id=models.IntegerField()
    message=models.CharField(max_length=500)
    msg_date=models.DateField()
    msg_time=models.IntegerField()
    status=models.CharField(max_length=500)
    class Meta:
        db_table = "tbl_messages"
class tbl_referral(models.Model):
    patient_id=models.IntegerField()
    hospital_id=models.IntegerField()
    referred_hos_id=models.IntegerField()
    doctor_id=models.IntegerField()
    doctor_views=models.CharField(max_length=500)
    ref_date= models.CharField(max_length=30)
    class Meta:
        db_table = "tbl_referral"
class tbl_complaints(models.Model):
    patient_id=models.IntegerField()
    hospital_id=models.IntegerField()
    doctor_id=models.IntegerField()
    complaint=models.CharField(max_length=500)
    status=models.CharField(max_length=30)
    class Meta:
        db_table = "tbl_complaints"
