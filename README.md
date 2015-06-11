# poormans-labyrinth

Give a scavenger hunt playground.

Structure:

* models that describe fun things
* an index page designed to look like a reporting page
* lots more configuration than is needed for such simplicity

The index/fake reporting page will include a series of questions for "attackers"
to try and answer.

## Setup

This project is optimized for creating a stack in AWS OpsWorks. The deploy script
will play nice and get the rails app up and running for you.

I highly suggest you isolate this playground in its own VPC with custom security
groups on the servers that only allow SSH and HTTP traffic. No reason to accidentally
open the rest of your AWS setup to the world!

## Using

Give your "attackers" an SSH key and a public IP address to hit the server(s) that
you setup. Haved them browse that the public IP via HTTP and show them how to SSH in
and let the hunting begin!
