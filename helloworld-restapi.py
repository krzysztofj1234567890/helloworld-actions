from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify(message='Hello, World Krzysztof: dockerhub!')

if __name__ == '__main__':
    # app.run()
    # Run the application when executed directly
    app.run(host='0.0.0.0', port=5000)
