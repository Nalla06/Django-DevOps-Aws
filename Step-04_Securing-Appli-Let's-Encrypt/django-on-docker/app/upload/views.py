from django.shortcuts import render
from django.core.files.storage import default_storage


def image_upload(request):
    if request.method == "POST" and request.FILES.get("image_file"):
        image_file = request.FILES["image_file"]
        filename = default_storage.save(image_file.name, image_file)
        image_url = default_storage.url(filename)
        print(image_url)
        return render(request, "upload.html", {"image_url": image_url})
    return render(request, "upload.html")