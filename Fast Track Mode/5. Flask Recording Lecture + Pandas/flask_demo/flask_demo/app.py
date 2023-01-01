from flask import Flask, render_template, request, jsonify

app = Flask(__name__) #object of flask

#### through html page (just for demo ...we are not given such role in industry)
@app.route('/', methods=['GET', 'POST']) # To render Homepage
def home_page():
    return render_template('index.html')

@app.route('/math', methods=['POST'])  # This will be called from UI
def math_operation():
    if (request.method=='POST'):
        operation=request.form['operation']
        num1=int(request.form['num1'])
        num2 = int(request.form['num2'])
        if(operation=='add'):
            r=num1+num2
            result= 'the sum of '+str(num1)+' and '+str(num2) +' is '+str(r)
        if (operation == 'subtract'):
            r = num1 - num2
            result = 'the difference of ' + str(num1) + ' and ' + str(num2) + ' is ' + str(r)
        if (operation == 'multiply'):
            r = num1 * num2
            result = 'the product of ' + str(num1) + ' and ' + str(num2) + ' is ' + str(r)
        if (operation == 'divide'):
            r = num1 / num2
            result = 'the quotient when ' + str(num1) + ' is divided by ' + str(num2) + ' is ' + str(r)
        return render_template('results.html',result=result)

### through postman
"""@app.route('/via_postman', methods=['POST']) # for calling the API from Postman/SOAPUI
def math_operation_via_postman():
    if (request.method=='POST'):
        operation=request.json['operation']
        num1=int(request.json['num1'])
        num2 = int(request.json['num2'])
        if(operation=='add'):
            r=num1+num2
            result= 'the sum of '+str(num1)+' and '+str(num2) +' is '+str(r)
        if (operation == 'subtract'):
            r = num1 - num2
            result = 'the difference of ' + str(num1) + ' and ' + str(num2) + ' is ' + str(r)
        if (operation == 'multiply'):
            r = num1 * num2
            result = 'the product of ' + str(num1) + ' and ' + str(num2) + ' is ' + str(r)
        if (operation == 'divide'):
            r = num1 / num2
            result = 'the quotient when ' + str(num1) + ' is divided by ' + str(num2) + ' is ' + str(r)
        return jsonify(result)"""

"""@app.route('/sudh', methods=['POST']) # for calling the API from Postman/SOAPUI
def math_sudh():
    if (request.method=='POST'):
        num0 = int(request.json["num0"])
        num1=int(request.json['num1'])
        num2 = int(request.json['num2'])

        result = num0*num1*num2
        return jsonify(result)"""


######## CLASS 2 starting from here

#### through URL
""""@app.route('/sudh_function') # for calling the API from Postman/SOAPUI
def url_test1():
    test1 = request.args.get("val1")
    test2 = request.args.get("val2")
    test3 = int(test1) + int(test2)



    return '''<h1> my result is: {}</h1>'''.format(test3)"""

if __name__ == '__main__':
    app.run()
