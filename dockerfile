FROM --platform=linux/amd64 python:3.11-slim


RUN apt-get update && apt-get install -y --no-install-recommends \
    libglib2.0-0 \
    libxkbcommon-x11-0 \
    libgl1-mesa-glx \
    libegl1-mesa \
    libdbus-1-3 \
    libxcb-cursor0 \
    libxcb-icccm4 \
    libxcb-keysyms1 \
    libxcb-shape0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    libxkbcommon-x11-0 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app


RUN pip install --no-cache-dir --upgrade pip wheel


COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .


ENV QT_QPA_PLATFORM=xcb

CMD ["python", "app.py"]
