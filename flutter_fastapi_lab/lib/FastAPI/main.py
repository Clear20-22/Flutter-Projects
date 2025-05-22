from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

# Allow all CORS for testing
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class Message(BaseModel):
    name: str
    message: str

@app.get("/")
def read_root():
    return {"message": "FastAPI backend is working!"}

@app.post("/send/")
def receive_data(msg: Message):
    return {"reply": f"Hello {msg.name}, you said: {msg.message}"}
