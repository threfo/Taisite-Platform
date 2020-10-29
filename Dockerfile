FROM ccr.ccs.tencentyun.com/bello-devops/taisite-platform:base

COPY backend/ /src/backend/
COPY dist/ /src/dist/

WORKDIR /src/backend
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5050
CMD ["python", "run.py"]

