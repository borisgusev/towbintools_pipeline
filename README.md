# TOWBINTOOLS PIPELINE

This is still in early development, hopefully in the future it will replace all of the lab's dozens of different bash scripts laying around and give the opportunity to everyone to easily customize their image analysis pipeline.

## How to install ?

### How to set up Visual Studio Code ?

1. Download VS Code : [https://code.visualstudio.com/download]
2. Install it like you would install any software.
3. Inside of VS Code, open a terminal and run :

```bash
code --install-extension ms-vscode-remote.remote-ssh
```

Now, click on the remote explorer icon that should be on the left of the window and click on the + to add a new remote.
Enter the command you usually use to ssh into the cluster using PuTTY, for example:

```bash
ssh username@izblisbon.unibe.ch
```

Obviously, change username to your username (first letter of your first name + last name, eg : spsalmon)

Optionnal, but **HIGHLY** recommended. Open the Windows command line (cmd). Run :

```bash
ssh-keygen
```

- Select all the default options, except if you are extremely paranoid and want to set a passphrase.
Go into the folder where the file was saved, it should be something like Users/username/.ssh/

- Open the file **id_rsa.pub** using the notepad or any text editing software.
Copy the entire content of the file.

- In VS Code, go to your home folder : /home/username/

- Go into the .ssh folder

- If it doesn't exist, create a file named **authorized_keys**

- Paste the content of the **id_rsa.pub** file that you copied earlier into this file

- You will now be able to connect to the cluster without having to type your password

If you want to code using Python, you should run the following commands, while connected inside of VS Code, while being connected to your session on the cluster.

```bash
code --install-extension ms-python.python
```

```bash
code --install-extension ms-toolsai.jupyter
```

```bash
code --install-extension ms-python.vscode-pylance
```

### How do to install the pipeline itself

- In VS Code, open a terminal and cd to your home directory :

```bash
cd
```

- Clone the pipeline repo from github :

```bash
git clone https://github.com/spsalmon/towbintools_pipeline.git
```

- Run the installation script :

```bash
chmod +x ~/towbintools_pipeline/pipeline_instalation_script.sh
```

```bash
./~/towbintools_pipeline/pipeline_instalation_script.sh
```

Follow the directions given, so basically, push enter a bunch of times and type yes (you want to answer yes everytime) when asked to. 