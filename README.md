ansible-role-custom-facts
=========

The role configure the remote machines to return extra facts when 
Ansible performs the `gather_facts` or when the `setup` module is executed.

The role evaluates the **machine OS family** to configure **Windows facts** 
or **Unix-based OS facts**.

Ansible are very simple to implement but has to be configured in the remote server.
This role will helps you to perform the configuration fast and easy.
 
The implementation of this role has been done following the article 
***[Ansible custom facts](https://medium.com/@jezhalford/ansible-custom-facts-1e1d1bf65db8)***
published by ***[@jezhalford](https://github.com/jezhalford)***.

Requirements
------------

- **Ansible in your control node**.
- **Unix-based OS remote nodes**:
  - **Python 2.7** or **Python 3.5 o latest**.
  - **Sudo permissions**.
- **Windows remote nodes**:
  - **PowerShell 5  or latest**.
  - **Administrator** permissions.
 

Role Variables
--------------

The role has no parameters but there is a variable 
setted by default with the OS distribution facts path.

The variable `facts_path` sets the path where the 
custom fact script will be placed. In Unix-based OS, 
this path is `/etc/ansible/facts.d` by default but,
on Windows, this path can be personalized. For Windows, 
I choose to place the custom facts under `C:\.ansible\facts.d`

Dependencies
------------

This role has no dependencies.

Example Playbook
----------------

To perform the environment configuration, you will need 
to have **admin** permissions, so remember to `become: yes`.

```yml
---

  - hosts: all
    become: yes
    roles:
      - ansible-role-custom-facts
```

License
-------

MIT

Author Information
------------------

### Alan Padierna Fernández

Full Stack Software Engineer. Please, follow me on:

- [GitHub](https://github.com/AlanPadi95)
- [LinkedIn](https://www.linkedin.com/in/alan-padierna-fern%C3%A1ndez-199a48152/)