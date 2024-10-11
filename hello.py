import sys
import datetime

def main(session):
    # Test available Python libraries
    libraries = ", ".join(sys.modules.keys())

    # Get current date
    current_date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    # Your original code with additional information
    return f"Hello Snowflake!\nAvailable libraries: {libraries}\nCurrent date: {current_date}"
