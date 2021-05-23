import requests
url = 'https://rasa-chatter.herokuapp.com/webhooks/rest/webhook'
myobj = {
    "message": "Hello",
}
x = requests.post(url, json = myobj)
print(x.text)