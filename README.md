# Registry-Sniffer:

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ![10 Seattle](https://github.com/user-attachments/assets/c70b7f21-688a-4239-87c9-9a03a8ff25ab) ![10 1 Berlin](https://github.com/user-attachments/assets/bdcd48fc-9f09-4830-b82e-d38c20492362) ![10 2 Tokyo](https://github.com/user-attachments/assets/5bdb9f86-7f44-4f7e-aed2-dd08de170bd5) ![10 3 Rio](https://github.com/user-attachments/assets/e7d09817-54b6-4d71-a373-22ee179cd49c)   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![10 4 Sydney](https://github.com/user-attachments/assets/e75342ca-1e24-4a7e-8fe3-ce22f307d881) ![11 Alexandria](https://github.com/user-attachments/assets/64f150d0-286a-4edd-acab-9f77f92d68ad) ![12 Athens](https://github.com/user-attachments/assets/59700807-6abf-4e6d-9439-5dc70fc0ceca)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) : ![None](https://github.com/user-attachments/assets/30ebe930-c928-4aaf-a8e1-5f68ec1ff349)  
![Discription](https://github.com/user-attachments/assets/4a778202-1072-463a-bfa3-842226e300af) &nbsp;&nbsp;: ![Registry Sniffer](https://github.com/user-attachments/assets/0d747061-0f1a-4495-80d5-e8fa0be80629)
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) &nbsp;: ![102025](https://github.com/user-attachments/assets/62cea8cc-bd7d-49bd-b920-5590016735c0)  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)

</br>

Anyone who works extensively with the Windows registry knows how large it is and how much software product legacy is stored there. Uninstall tools find many of these keys, but often leave behind remnants of keys that don't contain the product name. Most registry programs only offer a cursory scan to shorten the user's waiting time.

### Features:

* Find Keys
  * Keys
  * Values
  * Data
* Hotkeys
  * HKEY_LOCAL_MACHINE or HKLM
  * HKEY_CURRENT_CONFIG or HKCC
  * HKEY_CLASSES_ROOT or HKCR
  * HKEY_CURRENT_USER or HKCU
  * HKEY_USERS or HKU
  * HKEY_PERFORMANCE_DATA
  * HKEY_DYN_DATA
* Registry Jumper
* Deep Scan
* Export *.Reg File
* Create Registry List
* Delete Key
* All Windows OS Support


</br>

![Registry Sniffer](https://github.com/user-attachments/assets/866f40bb-6dd1-44ab-ac10-68b8a61bb7a1)


</br>


The Windows Registry is a [hierarchical database](https://en.wikipedia.org/wiki/Hierarchical_database_model) that stores low-level settings for the Microsoft Windows operating system and for applications that opt to use the registry. [The kernel](https://en.wikipedia.org/wiki/Kernel_(operating_system)), device drivers, services, Security Accounts Manager, and user interfaces can all use the registry. The registry also allows access to counters for profiling system performance.

In other words, the registry or Windows Registry contains information, settings, options, and other values for programs and hardware installed on all versions of Microsoft Windows operating systems. For example, when a program is installed, a new subkey containing settings such as a program's location, its version, and how to start the program, are all added to the Windows Registry.

Prior to the Windows Registry, [.INI files](https://en.wikipedia.org/wiki/INI_file) stored each program's settings as a text file or [binary file](https://en.wikipedia.org/wiki/Binary_file), often located in a shared location that did not provide user-specific settings in a multi-user scenario. By contrast, the Windows Registry stores all application settings in one logical repository (but also in a number of discrete files) and in a standardized form. According to Microsoft, this offers several advantages over .INI files. Since file parsing is done much more efficiently with a binary format, it may be read from or written to more quickly than a text INI file. Furthermore, [strongly typed data](https://en.wikipedia.org/wiki/Strong_and_weak_typing) can be stored in the registry, as opposed to the text information stored in .INI files. This is a benefit when editing keys manually using regedit.exe, the built-in Windows Registry Editor. Because user-based registry settings are loaded from a user-specific path rather than from a read-only system location, the registry allows multiple users to share the same machine, and also allows programs to work for less privileged users. Backup and restoration is also simplified as the registry can be accessed over a network connection for remote management/support, including from scripts, using the standard set of APIs, as long as the Remote Registry service is running and firewall rules permit this.


### Structure of Registry Key:
The registry contains two basic elements: keys and values. Registry keys are container objects similar to folders. Registry values are non-container objects similar to files. Keys may contain values and subkeys. Keys are referenced with a syntax similar to Windows' path names, using backslashes to indicate levels of hierarchy. Keys must have a [case insensitive](https://en.wikipedia.org/wiki/Case_sensitivity) name without backslashes.

The hierarchy of registry keys can only be accessed from a known root key handle (which is anonymous but whose effective value is a constant numeric handle) that is mapped to the content of a registry key preloaded by the kernel from a stored "hive", or to the content of a subkey within another root key, or mapped to a registered service or DLL that provides access to its contained subkeys and values.

E.g. HKEY_LOCAL_MACHINE\Software\Microsoft\Windows refers to the subkey "Windows" of the subkey "Microsoft" of the subkey "Software" of the HKEY_LOCAL_MACHINE root key.

There are seven predefined root keys, traditionally named according to their constant handles defined in the Win32 API, or by synonymous abbreviations (depending on applications).

* HKEY_LOCAL_MACHINE or HKLM
* HKEY_CURRENT_CONFIG or HKCC
* HKEY_CLASSES_ROOT or HKCR
* HKEY_CURRENT_USER or HKCU
* HKEY_USERS or HKU
* HKEY_PERFORMANCE_DATA (only in Windows NT, but invisible in the Windows Registry Editor)
* HKEY_DYN_DATA (only in Windows 9x, and visible in the Windows Registry Editor)

Like other files and services in Windows, all registry keys may be restricted by access control lists (ACLs), depending on user privileges, or on security tokens acquired by applications, or on system security policies enforced by the system (these restrictions may be predefined by the system itself, and configured by local system administrators or by domain administrators). Different users, programs, services or remote systems may only see some parts of the hierarchy or distinct hierarchies from the same root keys.

</br>

### List of standard registry value types:

| Type ID |	Symbolic type name |	Meaning and Encoding of the Data stored in the Registry Value |
| ------- | ------------------ | -------------------------------------------------------------- |
| 0	      | REG_NONE	         | No type (the stored value, if any)                             |
| 1	      | REG_SZ	           | A string value, normally stored and exposed in UTF-16LE (when using the Unicode version of Win32 API functions), usually terminated by a NUL character |
| 2	      | REG_EXPAND_SZ	     | An "expandable" string value that can contain environment variables, normally stored and exposed in [UTF-16LE](https://de.wikipedia.org/wiki/UTF-16), usually terminated by a NUL character |
| 3	      | REG_BINARY	       | Binary data (any arbitrary data) |
| 4	      | REG_DWORD / REG_DWORD_LITTLE_ENDIAN	| A DWORD value, a 32-bit unsigned integer (numbers between 0 and 4,294,967,295 [232 – 1]) ([little-endian](https://en.wikipedia.org/wiki/Endianness)) |
| 5	      | REG_DWORD_BIG_ENDIAN	| A DWORD value, a 32-bit unsigned integer (numbers between 0 and 4,294,967,295 [232 – 1]) ([big-endian](https://en.wikipedia.org/wiki/Endianness)) |
| 6	      | REG_LINK	         | A symbolic link (UNICODE) to another registry key, specifying a root key and the path to the target key |
| 7	      | REG_MULTI_SZ	| A multi-string value, which is an ordered list of non-empty strings, normally stored and exposed in Unicode, each one terminated by a null character, the list being normally terminated by a second null character. |
| 8	      | REG_RESOURCE_LIST	 | A resource list (used by the Plug-n-Play hardware enumeration and configuration) |
| 9	      | REG_FULL_RESOURCE_DESCRIPTOR	| A resource descriptor (used by the Plug-n-Play hardware enumeration and configuration) |
| 10	    | REG_RESOURCE_REQUIREMENTS_LIST	| A resource requirements list (used by the Plug-n-Play hardware enumeration and configuration) |
| 11	    | REG_QWORD / REG_QWORD_LITTLE_ENDIAN	|A QWORD value, a 64-bit integer (either big- or little-endian, or unspecified) (introduced in Windows 2000). |

</br>

### Root Keys:

* HKEY_LOCAL_MACHINE (HKLM)
Abbreviated HKLM, HKEY_LOCAL_MACHINE stores settings that are specific to the local computer.
The key located by HKLM is actually not stored on disk, but maintained in memory by the system kernel in order to map all the other subkeys. Applications cannot create any additional subkeys. On Windows NT, this key contains four subkeys, "SAM", "SECURITY", "SYSTEM", and "SOFTWARE", that are loaded at boot time within their respective files located in the %SystemRoot%\System32\config\ folder. A fifth subkey, "HARDWARE", is volatile and is created dynamically, and as such is not stored in a file (it exposes a view of all the currently detected Plug-and-Play devices). On Windows Vista and above, a sixth and seventh subkey, "COMPONENTS" and "BCD", are mapped in memory by the kernel on-demand and loaded from %SystemRoot%\System32\config\COMPONENTS or from boot configuration data, \boot\BCD on the system partition.

* HKEY_CLASSES_ROOT (HKCR)
Abbreviated HKCR, HKEY_CLASSES_ROOT contains information about registered applications, such as file associations and OLE Object Class IDs, tying them to the applications used to handle these items. On Windows 2000 and above, HKCR is a compilation of user-based HKCU\Software\Classes and machine-based HKLM\Software\Classes. If a given value exists in both of the subkeys above, the one in HKCU\Software\Classes takes precedence. The design allows for either machine- or user-specific registration of COM objects.

* HKEY_USERS (HKU)
Abbreviated HKU, HKEY_USERS contains subkeys corresponding to the HKEY_CURRENT_USER keys for each user profile actively loaded on the machine, though user hives are usually only loaded for currently logged-in users.

* HKEY_CURRENT_USER (HKCU)
Abbreviated HKCU, HKEY_CURRENT_USER stores settings that are specific to the currently logged-in user.[14] The HKEY_CURRENT_USER key is a link to the subkey of HKEY_USERS that corresponds to the user; the same information is accessible in both locations. The specific subkey referenced is (HKU)\(SID)\... where (SID) corresponds to the Windows SID; if the "(HKCU)" key has the following suffix (HKCU)\Software\Classes\... then it corresponds to (HKU)\(SID)_CLASSES\... i.e. the suffix string "_CLASSES" is appended to the (SID).

* HKEY_PERFORMANCE_DATA
This key provides runtime information into performance data provided by either the NT kernel itself, or running system drivers, programs and services that provide performance data. This key is not stored in any hive and not displayed in the Registry Editor, but it is visible through the registry functions in the Windows API, or in a simplified view via the Performance tab of the Task Manager (only for a few performance data on the local system) or via more advanced control panels (such as the Performances Monitor or the Performances Analyzer which allows collecting and logging these data, including from remote systems).
On Windows NT systems, each user's settings are stored in their own files called NTUSER.DAT and USRCLASS.DAT inside their own Documents and Settings subfolder (or their own Users sub folder in Windows Vista and above). Settings in this hive follow users with a roaming profile from machine to machine.

* HKEY_DYN_DATA
This key is used only in Windows 95, Windows 98 and Windows ME.[15] It contains information about hardware devices, including Plug and Play and network performance statistics. The information in this hive is also not stored on the hard drive; the Plug and Play information is gathered and configured at startup and is stored in memory.


### Registry Jumper:
Registry Jumper is a small utility that allows you to open the desired registry keys in Windows Regedit with a single click, making it easier to navigate the Windows registry.
It can work in either GUI mode or command line mode, which opens the registry key specified as a command line parameter.
In addition, Registry Jumper handles the custom "regjump://" protocol, which can be used, for example, in links in HTML pages to point to specific registry locations.

* The Favorites list provides instant access to the most frequently used registry keys. You can organize and export it to HTML.
Advanced 64-bit/32-bit registry handling on 64-bit Windows. The program automatically selects the existing 64-bit or 32-bit registry path or prompts the user if both paths are present.
* The tool keeps a history of recently opened registry keys.
* You can use the "regjump://" protocol handler provided by Registry Jumper to navigate to registry keys via hyperlinks directly from HTML pages. This allows you to maintain your registry favorites and tips in HTML format (see the sample page).
* Supports both full and short root registry key names (e.g., HKLM = HKEY_LOCAL_MACHINE, full list below)
Can open registry keys specified from the command line or via the clipboard.
* Leading and trailing spaces, brackets, quotes, tabs, and double slashes are trimmed, so the registry paths like ['HKLM\\Software\Microsoft\Windows\CurrentVersion\Run'] are no problem.
* The executable has a small size (~ 0.2 MB) and low system requirements.



