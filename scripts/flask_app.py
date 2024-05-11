from flask import Flask, jsonify
import pandas as pd

app = Flask(__name__)


csv_path = '/Users/lflapple/Desktop/9440/cis9440hw12/Data/thefact_table.csv'


data = pd.read_csv(csv_path)

@app.route('/data', methods=['GET'])
def get_data():

    return jsonify(data.to_dict(orient='records'))

if __name__ == '__main__':
    app.run(debug=True, port=5001)

