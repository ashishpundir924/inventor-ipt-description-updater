# 🛠️ Inventor IPT Description Updater
<img width="665" height="603" alt="VPD1RzGm48NlaV8VHk702GwKGza3DDtjIaZ0eLMHUfp6inihZiUonmtzzqmI5C9sYtDnCi_VUndRLqamIkvTMRo5RKx2FQJEUa1lO42Xs6FiocBy5Z2YLbiqF5X_18cPrfL7RBfZvEpDbXr7UBFVZSzQqYfsY5Q4F1pGfN_M6pfWTh9d" src="https://github.com/user-attachments/assets/b4e6792e-3d95-4398-8cce-00b5d7aae0f3" />

A simple VBA macro for Autodesk Inventor that removes existing descriptions and applies a new user-defined description to all open `.ipt` (Part) files. Created by **Ashish924**.

---

## ✨ Features

* Prompts user to confirm before changing descriptions
* Requests user input for new description text
* Clears old descriptions before applying new ones
* Updates **all currently open `.ipt` files**
* Saves changes automatically

---

## 🚀 How to Use

1. **Open Autodesk Inventor**
2. Ensure at least one `.ipt` part file is open.
3. Press `Alt + F11` to open the **VBA Editor**
4. Insert a **new Module**
5. Paste the provided macro code into the module
6. Run the macro: `UpdateDescriptionInAllOpenIPTs`

---

## 🧠 Workflow Diagram

```plantuml
@startuml
' Created by Ashish924
title Inventor Description Update Macro Flow
caption Created by Ashish924

actor User as Ashish924
participant "Inventor VBA Macro" as Macro
participant "Inventor Application" as App

Ashish924 -> Macro: Run macro
Macro -> Ashish924: Ask "Do you want to enter new description?"
Ashish924 -> Macro: Click Yes
Macro -> Ashish924: Ask "Enter new description"
Ashish924 -> Macro: Enters text
Macro -> App: Loop through open documents
App -> Macro: Check if document is .ipt
Macro -> App: Remove old description
Macro -> App: Add new description
Macro -> App: Save file
Macro -> Ashish924: Show "Descriptions updated" message

@enduml
```
