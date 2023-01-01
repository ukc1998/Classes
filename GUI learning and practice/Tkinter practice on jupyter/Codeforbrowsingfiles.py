import os

def browser(entered_directory):
    new_store_room = []
    store_room = os.listdir(entered_directory)
    for i in store_room:
            new_store_room.append(i)

    return new_store_room