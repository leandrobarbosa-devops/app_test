from flask import Flask
from flask_caching import Cache
from datetime import datetime

app = Flask(__name__)
cache = Cache(app, config={'CACHE_TYPE': 'SimpleCache'})

@app.route('/text')
@cache.cached(timeout=10)
def fixed_text():
    return 'Teste com texto - Ok - Cache - Python '

@app.route('/time')
@cache.cached(timeout=60)
def current_time():
    now = datetime.now().replace(microsecond=0)
    return f"Time: {now}"

if __name__ == '__main__':
    app.run(debug=True)
