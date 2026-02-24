# PostureApp

PostureApp is a macOS application that tracks user posture in real time using MediaPipe and computer vision.  
It helps build healthy sitting habits and reduces strain on the back during work or study.

---

## 📸 Screenshots

<!-- Add your images here -->
| Main Screen | Good Posture | Bad Posture |
|------------|------------|-----------|
| ![main](screenshots/good.png) | ![good](screenshots/bad.png) | ![bad](screenshots/bad1.png) | | ![bad_2](screenshots/bad2.png)|  ![bad_3] (screenshots/bad3.png) |


---

## 🚀 How to Run with Docker

You can run the project without installing Python or dependencies — just Docker.

### 1. Install Docker

Download and install Docker Desktop:

- macOS / Windows: https://www.docker.com/products/docker-desktop
- Linux: use your package manager

### 2. Build the Docker Image

Inside the project folder:

```bash
docker build -t postureapp .
 
