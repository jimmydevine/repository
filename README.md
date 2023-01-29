# repository
Repository depot

curl -fsSL https://raw.githubusercontent.com/jimmydevine/repository/main/repo/ubuntu-jimmydevine.gpg > /usr/share/keyrings/ubuntu-jimmydevine.gpg

echo 'deb [signed-by=/usr/share/keyrings/ubuntu-jimmydevine.gpg] https://raw.githubusercontent.com/jimmydevine/repository/main/repo/ubuntu stable main' > /etc/apt/sources.list.d/jimmydevine.list

apt-get update

