FROM python:3.8-slim
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
RUN pip install -r reqs.txt
WORKDIR /home/djApp
COPY . /home/djApp/
ENV DJ_SUP_EM=a@aa.com
ENV DJ_SUP_PASS=P@$$word1
ENV DJ_SUP_USN=adm1
RUN export DJ_SUP_EM
RUN export DJ_SUP_USN
RUN export DJ_SUP_PASS
RUN python manage.py collectstatic --noinput
CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]

