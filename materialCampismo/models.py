from django.db import models

ESTADO_MATERIAL = (
    ('nuevo','nuevo'),
    
    
)

# Create your models here.
class Material(models.Model):
    
    estado = models.CharField(max_length=30, choices=ESTADO_MATERIAL)
    nombre = models.CharField(max_length=100,default='')
    