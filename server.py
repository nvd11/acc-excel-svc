import src.configs.config
from src.configs.config import yaml_configs
from fastapi import FastAPI
import uvicorn

app = FastAPI(

    root_path=yaml_configs["fastapi"]["root_path"],
   
)

@app.get("/")
def read_root():
    return {"Hello": "World"}

if __name__ == "__main__":
    
    uvicorn.run("server:app", host="0.0.0.0", port=8000)