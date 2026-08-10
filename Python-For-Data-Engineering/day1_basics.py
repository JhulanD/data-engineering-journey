# =============================================
# DAY 1: PYTHON BASICS FOR DATA ENGINEERING
# Goal: Understand variables and data types 100%
# =============================================

# =============================================
# SECTION 1: BASIC VARIABLES
# =============================================

# In Data Engineering we store many things:
# - IDs, counts, durations, statuses, dates, file names, etc.

user_id = 4567                    # Integer (whole number) - used for IDs, row counts
session_duration = 45.75          # Float (decimal) - used for time, money, percentages
is_active = True                  # Boolean - True/False, very common for status flags
event_date = "2026-07-09"         # String (text) - dates are often stored as text first
tags = ["etl", "pipeline", "daily"]   # List - used to store multiple values

# Print types to understand what Python sees
print("=== DATA TYPES ===")
print("user_id type:", type(user_id))
print("session_duration type:", type(session_duration))
print("is_active type:", type(is_active))
print("event_date type:", type(event_date))
print("tags type:", type(tags))

print("\n=== PRINTING VALUES ===")
print("User ID:", user_id)
print("Session Duration:", session_duration, "minutes")
print("Is active?", is_active)
print("Event Date:", event_date)
print("Tags:", tags)

# =============================================
# SECTION 2: PRACTICE TASKS (Do these one by one)
# =============================================

# TASK 1: Create 3 new DE-related variables
# ------------------------------------------------
rows_processed = 12500            # Integer - common in pipeline logs
error_count = 3                   # Integer - error tracking
file_name = "sales_july_2026.csv" # String - file handling is very common in DE

print("\n=== TASK 1: My New Variables ===")
print("Rows Processed:", rows_processed)
print("Error Count:", error_count)
print("File Name:", file_name)
print("Types:", type(rows_processed), type(error_count), type(file_name))

# TASK 2: Create a List for Pipeline Stages
# ------------------------------------------------
pipeline_stages = ["ingest", "clean", "transform", "load"]

print("\n=== TASK 2: Pipeline Stages ===")
print("Pipeline Stages:", pipeline_stages)
print("Number of stages:", len(pipeline_stages))   # len() = length of list

# TASK 3: Create a small Data Pipeline Status Report
# ------------------------------------------------
print("\n=== TASK 3: Pipeline Status Report ===")
print("Data Pipeline Status Report")
print("===========================")
print("Total Rows Processed :", rows_processed)
print("Errors Encountered    :", error_count)
print("File Processed        :", file_name)
print("Pipeline Stages       :", pipeline_stages)
print("Status                : Running")   # Hardcoded for now

# TASK 4: Calculate Success Rate (Challenge)
# ------------------------------------------------
success_rate = 98.5               # Float - success rate in percentage

print("\n=== TASK 4: Success Rate ===")
print("Success Rate:", success_rate, "%")

# Bonus: Combine variables in a meaningful print
print(f"\nSummary: Processed {rows_processed} rows from {file_name} with {error_count} errors ({success_rate}% success)")

# =============================================
# IMPORTANT LEARNING NOTES
# =============================================

# 1. Why different data types?
#    - Integers & Floats → mathematical operations
#    - Strings → text, dates, file names
#    - Booleans → conditions and flags
#    - Lists → multiple items

# 2. What happens if you do this? (Try uncommenting one by one)
# print(event_date + session_duration)   # This will give ERROR (can't add string + float)

# 3. f-strings (modern way to combine text and variables - very useful)
#    Example: f"Processed {rows_processed} rows"  ← we will use this a lot

# =============================================
# YOUR TURN - Add your own experiments below
# =============================================

# Write your own code here:
# Example:
# my_new_variable = ???
# print(???)