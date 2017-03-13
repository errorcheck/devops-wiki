#ChatOps
"Placing tools directly in the middle of the conversation"- Jesse Newland, GitHub

##ChatOps. Késako ? 

CAMS : To grow faster and mantain stability, it is important to adopt CAMS : a culture of automation, measurement and sharing. 
Chatops concern conversation driven development by bringing the tools into conversations. Robots become members of your team. 
ChatOps is a model where people, tools, process and automation are connected in a transparent flow. 

Three main apecst in ChatOps : 

- Chat clients : chat rooms ...
- Bots
- Scripts 

## ChatOps. What for ?

- Automating

- Deployment

- Provisioning

- Tweeting

- Monitoring

- Graphics

- ...

## How to ChatOps ? 

### ERR
TODO
### LITA 
TODO
### Hubot 

[Hubot](https://github.com/github/hubot) is a cool chatbot written entirely in Coffescript by Github. 

pre-requirements : you will need [npm and nodejs](https://docs.npmjs.com/getting-started/installing-node). 

Install Hubot Generator : 
```
npm install -g yo generator-hubot 
```

This command creates a yeoman generator for Hubot. You can then create a new instance of Hubot : 

``` 
mkdir myhubot
cd myhubot
yo hubot
``` 
You now have your fonctionnal Hubot : 

```
bin/hubot
Hubot>
``` 

PS : Hubot needs Redis to persist data. 

Hubot is useful and powerful via Scripts. They define the skills of your Hubot instance. Hundreds of them are written and mantained by the community and you can create your own. Check the list : [Hubot Scripts.](https://github.com/github/hubot-scripts/tree/master/src/scripts)

<p align="center">
  <img src="http://i.imgur.com/FtynmY5.png"/>
</p>
