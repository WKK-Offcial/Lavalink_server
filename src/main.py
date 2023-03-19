from dotenv import load_dotenv
from dropbox_storage import DropboxManager

def main():
    load_dotenv()
    dropbox = DropboxManager()
    dropbox.download_all()
    

if __name__ == "__main__":
    main()