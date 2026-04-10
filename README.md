# jabz
Decentralized Anonymous Online Chatroom for Text and Voice Communication and Media Sharing (DAOCTVC for short)

# DOCKER RUN
    - clone the repo
    - docker build -t jabz-app .
    - docker run -p 5173:5173 jabz-app
    
    After you are done to end run the following
    - ctrl-c


# If you want local install instead of Dockerfile do the following
    - node https://nodejs.org/en/download
    - node -v and nmp -v to confrm its installed
    - npm init -y
    - npm install tailwindcss postcss autoprefixer
    - npm install -D vite
    - npm install tailwindcss @tailwindcss/vite

# To run the project locally 
    - npm run dev