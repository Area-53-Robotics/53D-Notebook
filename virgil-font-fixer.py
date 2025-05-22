import os

def find_files(directory, extension):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(extension):
                yield os.path.join(root, file)

# Example usage
for file_path in find_files("entries", ".svg"):
    with open(file_path, "r") as f:
        text = f.read()
        text = text.replace("Virgil", "Virgil 3 YOFF")
    
    with open(file_path, "w") as f:
        f.write(text)