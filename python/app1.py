from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route('/text')
def fixed_text():
    return 'Teste com texto - Ok - Python '

@app.route('/time')
def current_time():
    now = datetime.now().replace(microsecond=0)
    return f"Time: {now}"

if __name__ == '__main__':
    app.run(debug=True)
