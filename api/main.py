from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

# This is the entrypoint for the entire Python back-end

app = FastAPI()

@app.get("/api/test_route")
async def root():
    return {"message": "Hello World"}

# Host the static front-end files (HTML, JS, CSS, images)
app.mount("/", StaticFiles(directory="front-end/out", html=True), name="static")
