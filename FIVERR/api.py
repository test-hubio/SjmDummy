from flask import Flask, request, jsonify
from flask_cors import CORS
from fiverrModel import FiverrIntegrationModel
from mysql.connector.pooling import MySQLConnectionPool
import os

app = Flask(__name__)
CORS(app, origins=[os.getenv("FRONTEND_URL", "http://localhost:5173")], credentials=True)

# Database connection pool
dbconfig = {
    "host": os.getenv("DB_HOST", "localhost"),
    "user": os.getenv("DB_USER", "root"), 
    "password": os.getenv("DB_PASSWORD", ""),
    "database": os.getenv("DB_NAME", "fiverr_clone"),
    "pool_name": "mypool",
    "pool_size": 5
}

connection_pool = MySQLConnectionPool(**dbconfig)

# Initialize model with DB connection
model = FiverrIntegrationModel(connection_pool)

@app.route("/find-matches", methods=["POST"])
async def find_matches():
    try:
        data = request.json
        matches = await model.find_matches(data)
        return jsonify({"matches": matches})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/start-interview", methods=["POST"]) 
async def start_interview():
    try:
        data = request.json
        results = await model.start_interview(data["freelancer_id"], data["project_id"])
        return jsonify(results)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    port = int(os.getenv("PY_PORT", 7900))
    app.run(host="0.0.0.0", port=port)