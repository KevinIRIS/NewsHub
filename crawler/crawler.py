import tweepy
from OAuth import OAuth
import sys


if __name__ == "__main__":
    if len(sys.argv) != 5:
        print("invalid parameters")
        exit(-1)
    ck = sys.argv[1]
    cs = sys.argv[2]
    at = sys.argv[3]
    ats = sys.argv[4]
    auth = OAuth(ck,cs,at,ats)
    api = auth.get_api()
    user = api.get_user('KevinMoveFast')