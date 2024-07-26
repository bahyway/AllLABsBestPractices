### Step-by-Step Guide to Create `.vscode/settings.json`

1. **Open Your Project in VS Code** :

* Open Visual Studio Code.
* Open your project folder by going to `File > Open Folder` and selecting your project directory.

1. **Create the `.vscode` Folder** :

* In the Explorer view (usually on the left side), right-click your project's root folder and select `New Folder`.
* Name the new folder `.vscode`.

1. **Create `settings.json` File** :

* Right-click the `.vscode` folder and select `New File`.
* Name the file `settings.json`.

1. **Add Project-Specific Settings** :

* Open the `settings.json` file you just created.
* Add the following content to the file:
  <pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copy code</button></span></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="!whitespace-pre hljs language-json">{
      "editor.tabSize": 2,
      "editor.formatOnSave": true,
      "files.exclude": {
          "node_modules": true,
          ".git": true
      },
      "eslint.validate": [
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact"
      ]
  }
  </code></div></div></pre>

1. **Save the File** :

* Save the `settings.json` file.

### Example Structure

Your project directory should now look something like this:

<pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>css</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copy code</button></span></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="!whitespace-pre hljs language-css">my-project/
├── src/
├── .vscode/
│   └── settings.json
├── package.json
└── ...
</code></div></div></pre>

### Explanation of `settings.json` Content

* **`editor.tabSize`: 2** : Sets the tab size to 2 spaces.
* **`editor.formatOnSave`: true** : Automatically formats the file when saving.
* **`files.exclude`** : Excludes `node_modules` and `.git` directories from the file explorer.
* **`eslint.validate`** : Configures ESLint to validate JavaScript, JavaScript React, TypeScript, and TypeScript React files.

### Why Use Project-Specific Settings?

* **Consistency** : Ensures all team members use the same settings, leading to consistent code formatting and behavior.
* **Project-Specific** : Different projects may have different requirements, and using project-specific settings allows customization per project.
* **Version Control** : These settings can be committed to version control, making them available to all contributors.

By adding the settings to the `.vscode/settings.json` file within your project, you ensure that these settings are applied to the project and shared among all contributors. This approach is preferable to adding them to the user-specific settings file, which would apply globally across all projects and users.

## To configure multiple terminal profiles 

To configure multiple terminal profiles including PowerShell, Command Prompt, Azure CLI, Git Bash, and a generic Terminal in Visual Studio Code for all projects, you can modify the global settings in VS Code. Here’s how you can set up your `settings.json` file to include these profiles with default starting directories.

### Step-by-Step Guide

1. **Open Global Settings** :

* Open Visual Studio Code.
* Press `Ctrl+,` (or `Cmd+,` on Mac) to open the Settings UI.
* Click on the top right corner `{}` icon to open `settings.json`.

1. **Add Terminal Profiles** :

* Add the following configuration to the `settings.json` file to set up the profiles:

<pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copy code</button></span></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="!whitespace-pre hljs language-json">{
  "terminal.integrated.profiles.windows": {
    "PowerShell": {
      "path": "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
      "args": [],
      "icon": "terminal-powershell",
      "cwd": "${workspaceFolder}"
    },
    "Command Prompt": {
      "path": "C:\\Windows\\System32\\cmd.exe",
      "args": [],
      "icon": "terminal-cmd",
      "cwd": "${workspaceFolder}"
    },
    "Azure CLI": {
      "path": "C:\\Program Files (x86)\\Microsoft SDKs\\Azure\\CLI2\\wbin\\az.cmd",
      "args": [],
      "icon": "terminal-azure",
      "cwd": "${workspaceFolder}"
    },
    "Git Bash": {
      "path": "C:\\Program Files\\Git\\bin\\bash.exe",
      "args": ["--login", "-i"],
      "icon": "terminal-bash",
      "cwd": "${workspaceFolder}"
    },
    "Terminal": {
      "path": "C:\\Windows\\System32\\cmd.exe",
      "args": [],
      "icon": "terminal-cmd",
      "cwd": "${workspaceFolder}"
    }
  },
  "terminal.integrated.defaultProfile.windows": "PowerShell",
  "terminal.integrated.env.windows": {
    "HOME": "${workspaceFolder}"
  }
}
</code></div></div></pre>

### Explanation

* **PowerShell** : Configured to start in the workspace folder with the PowerShell icon.
* **Command Prompt** : Configured to start in the workspace folder with the Command Prompt icon.
* **Azure CLI** : Configured to use Azure CLI, starts in the workspace folder with the Azure icon.
* **Git Bash** : Configured to start Git Bash in login mode, starts in the workspace folder with the Bash icon.
* **Terminal** : A generic terminal profile using Command Prompt, starts in the workspace folder with the Command Prompt icon.

### Steps to Verify the Configuration

1. **Save the Configuration** :

* Save the changes to the `settings.json` file.

1. **Open a New Terminal in VS Code** :

* Open a new terminal by pressing `Ctrl+` (or `Cmd+` on Mac).

1. **Select the Terminal Profile** :

* Click the dropdown arrow in the terminal panel to select and switch between different terminal profiles.

1. **Check the Starting Directory** :

* Verify that each terminal starts in the workspace folder as configured.

### Additional Configuration

* **Set Default Terminal Profile** : You can change the default terminal profile by updating the `terminal.integrated.defaultProfile.windows` setting.

<pre><div class="dark bg-gray-950 rounded-md border-[0.5px] border-token-border-medium"><div class="flex items-center relative text-token-text-secondary bg-token-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded-t-md"><span>json</span><div class="flex items-center"><span class="" data-state="closed"><button class="flex gap-1 items-center"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24" class="icon-sm"><path fill="currentColor" fill-rule="evenodd" d="M7 5a3 3 0 0 1 3-3h9a3 3 0 0 1 3 3v9a3 3 0 0 1-3 3h-2v2a3 3 0 0 1-3 3H5a3 3 0 0 1-3-3v-9a3 3 0 0 1 3-3h2zm2 2h5a3 3 0 0 1 3 3v5h2a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1h-9a1 1 0 0 0-1 1zM5 9a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h9a1 1 0 0 0 1-1v-9a1 1 0 0 0-1-1z" clip-rule="evenodd"></path></svg>Copy code</button></span></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="!whitespace-pre hljs language-json">{
    "terminal.integrated.defaultProfile.windows": "Git Bash"
  }
  </code></div></div></pre>

* **Environment Variables** : Set environment variables for the terminal using the `terminal.integrated.env.windows` setting.

### Summary

By following these steps and using the provided configuration, you can set up multiple terminal profiles in VS Code, including PowerShell, Command Prompt, Azure CLI, Git Bash, and a generic Terminal, each configured to start in the current workspace folder. This setup ensures that your development environment is consistent across all projects.
