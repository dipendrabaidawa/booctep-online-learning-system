from teacher.models import TestVideo
from django.conf import settings
import vimeo
    
def my_jobs():
    print('Uploading video to Vimeo')

    client = vimeo.VimeoClient(
        key=settings.VIMEO_KEY,  
        token=settings.VIMEO_TOKEN,
        # user="web.mobile@hotmail.com"
        secret=settings.VIMEO_SECRET
    )
    
    path = '/uploads/courses/videos/'
    to_upload = TestVideo.objects.filter(vimeo_url='')
    for v in to_upload:
        full_path = settings.STATICFILES_DIRS[0] + '/' + v.url
        name = v.name
        desc = 'Booctep videos: ' + name

        # Upload to Vimeo
        uri = client.upload(full_path, data={
            'name': name,
            'description': desc
        })
            
        # Get the info of uploaded video
        response = client.get(uri)
        info = response.json()
        vimeo_url = info['link']	

        # Save the vimeo url
        v.vimeo_url = vimeo_url
        v.save()

