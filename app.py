"""System module."""
from flask import render_template, Flask
app = Flask(__name__)


@app.route('/hello/')
@app.route('/hello/<name>')
def hello(name=None):
    """A dummy docstring."""
    return render_template('hello.html', name=name)


if __name__ == "__main__":
    main.run(debug=True, host="0.0.0.0", port=5000)
