curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
	| sudo tee /etc/apt/sources.list.d/ngrok.list \
	&& sudo apt update \
	&& sudo apt install ngrok
ngrok config add-authtoken 2s0omvPiWnlmiIdYIZ2tQ7D5z8l_zGuQt3SL5tmrLSrQ6f36
echo "Enter the port  to run :eg ngrok http 2525"
read port

# Step 2: Create the directory using the user input
ngrok http $port
