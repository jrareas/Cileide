import yaml
import os

class Config:
    def __init__(self):
        self.data = {}
        with open(f"{os.path.dirname(os.path.realpath(__file__))}/config.yaml") as file:
            self.data = yaml.safe_load(file)
    
    def get(self,key):
        return self.data.get(key)