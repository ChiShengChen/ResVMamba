import os
import shutil

def copy_images(image_folder_path, text_file_path, output_folder):
    # Create the output folder if it does not exist
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Open and read the contents of the text file
    with open(text_file_path, 'r') as file:
        lines = file.readlines()

        # Iterate over each line in the file
        for line in lines:
            # Extract the image path
            image_path = line.strip().split(' ')[0]
            if not image_path:  # Skip empty lines
                continue

            # Construct the source path of the image
            src_path = os.path.join(image_folder_path, image_path)

            # Construct the destination path (preserve the folder structure)
            dst_path = os.path.join(output_folder, image_path)

            # Create the directory if it does not exist
            os.makedirs(os.path.dirname(dst_path), exist_ok=True)

            # Copy the image
            shutil.copy(src_path, dst_path)
            print(f"Copied: {src_path} to {dst_path}")

# Example usage
# image_folder_path = '/home/public_3T/food_data/CNFOOD-241/train600x600'  # Update with the actual image folder path
# text_file_path = '/home/public_3T/food_data/CNFOOD-241/train_n.txt'  # The path to the text file (ensure this script is in the same directory as the text file or provide an absolute path)
# output_folder = '/home/public_3T/food_data/CNFOOD-241/train'  # Update with your desired output folder path

image_folder_path = '/home/meow/my_data_disk_5T/food_classification/CNFOOD-241/train600x600'  # Update with the actual image folder path
text_file_path = '/home/meow/my_data_disk_5T/food_classification/CNFOOD-241/test_n.txt'  # The path to the text file (ensure this script is in the same directory as the text file or provide an absolute path)
output_folder = '/home/meow/my_data_disk_5T/food_classification/CNFOOD-241/val'  # Update with your desired output folder path

copy_images(image_folder_path, text_file_path, output_folder)
