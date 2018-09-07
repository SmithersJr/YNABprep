import sys
import csv
import Tkinter as tk
import tkFileDialog
import tkMessageBox
import tempfile
from shutil import copyfile

# # Get the exported file and set the new file name and location
# set exportedFile to POSIX path of (choose file) as text

def get_original_file():
#    original_filename = ""
    copy_file = tempfile.TemporaryFile(dir=tempfile.gettempdir())
    root = tk.Tk()
    root.withdraw()
    original_file = tkFileDialog.askopenfilename(defaultextension = ".csv")

    if original_file == "":
        sys.exit("No file selected")
    elif original_file.lower().endswith(".csv"):
        copyfile(str(original_file), str(copy_file))
        return copy_file
    else:
        tkMessageBox.showerror("Error!", "You must select a CSV file.", icon = "error")
        get_original_file()
    

def get_results_file():
    results_filename = ""

    root = tk.Tk()
    root.withdraw()
    results_filename = tkFileDialog.asksaveasfilename(defaultextension = ".csv")
    if results_filename == "":
        if tkMessageBox.askyesno("Cancel?", "Are you sure you want to cancel processing this file?"):
            sys.exit("File save cancelled")
        else:
            get_results_file()
    else:
        return results_filename

temp_dir = tempfile.gettempdir()
work_file = get_original_file()
new_file = get_results_file()
print "Temp directory: %s" % temp_dir
print "Work file: %s" % work_file
print "New file will be: %s" % new_file

work_file.close()
new_file.close()
# # Copy and rename exported file to avoid problematic characters in file name
# set tempFolder to path to temporary items from user domain
# #tell Finder to copy exportedFile to /
# tell application "Finder"
#     copy exportedFile to tempFolder
# end tell

# # Get the header fields
# set headerText to do shell script "awk < " & exportedFile & " -F, 'BEGIN{OFS=\",\";} {if (NR == 1) { print $0 }}'"
# set prevTID to AppleScript's text item delimiters
# set AppleScript's text item delimiters to ","
# set theList to every text item of headerText
# set AppleScript's text item delimiters to prevTID

#def get_headers():
    

# # Get the fields for YNAB to import
# set theDate to choose from list theList with title "Field Picker" with prompt "Please select the Date field:" default items "Date"
# if theDate is false then
#     display dialog "User canceled script execution." buttons {"OK"} default button 1
#     return
# end if
# set awkDate to list_position(theDate as text, theList)
# 
# set thePayee to choose from list theList with prompt "Please select the Payee field:" default items "Description" as text
# if thePayee is false then
#     display dialog "User canceled script execution." buttons {"OK"} default button 1
#     return
# end if
# set awkPayee to list_position(thePayee as text, theList)
# 
# set theCheck to choose from list theList with prompt "Please select the Check # field:" default items "Check Number" as text
# if theCheck is false then
#     display dialog "User canceled script execution." buttons {"OK"} default button 1
#     return
# end if
# set awkCheck to list_position(theCheck as text, theList)
# 
# set theAmount to choose from list theList with prompt "Please select the Amount field:" default items "Amount" as text
# if theAmount is false then
#     display dialog "User canceled script execution." buttons {"OK"} default button 1
#     return
# end if
# set awkAmount to list_position(theAmount as text, theList)
# 
# # Set the field order for AWK
# set awkOrder to "$" & awkDate & ",$" & awkPayee & ",$" & awkCheck & ",$" & awkAmount
# 
# # AWK the file, stripping original headers and adding YNAB headers
# set theData to do shell script "cat " & exportedFile & " | awk -F, 'BEGIN{OFS=\",\"; print \"Date,Payee,Check,Amount\";} {if (NR > 1)  {print " & awkOrder & " }}' "
# 
# # Fix negative numbers with ()
# # [Try to tweak this to either work on the awkAmount field only or to treat the entire negative number as one string to ensure it doesn't modify () in non-number fields]
# set theData to replace_chars(theData, "($", "-$")
# set theData to replace_chars(theData, ")", "")
# 
# # Name the new file for YNAB
# set newFile to (choose file name with prompt "Save As File:" default name "YNAB_Import" default location path to desktop) as text
# set theMonth to (month of the (current date)) * 1 as text
# if the length of theMonth is 1 then set theMonth to "0" & theMonth
# set theDay to (day of the (current date)) * 1 as text
# if the length of theDay is 1 then set theDay to "0" & theDay
# set theYear to (year of the (current date)) * 1 as text
# set theTime to time of the (current date) as text
# set newFile to newFile & "_" & theMonth & theDay & theYear & theTime & ".csv"
# 
# # Create the new file for YNAB
# set myFile to open for access (newFile) with write permission
# write theData to myFile
# close access myFile
# 
# tell application "Finder"
#     activate
#     select file newFile
# end tell
# 
# # Sub-routine to determine field number of chosen headers
# on list_position(this_item, this_list)
#     repeat with i from 1 to the count of this_list
#         if item i of this_list is this_item then return i
#     end repeat
#     return 0
# end list_position
# 
# # Sub-routine for find & replace
# on replace_chars(this_text, search_string, replacement_string)
#     set prevTID to AppleScript's text item delimiters
#     set AppleScript's text item delimiters to the search_string
#     set the item_list to every text item of this_text
#     set AppleScript's text item delimiters to the replacement_string
#     set this_text to the item_list as string
#     set AppleScript's text item delimiters to prevTID
#     return this_text
# end replace_chars