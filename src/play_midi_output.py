import pygame
import time
import threading

# Function to play the MIDI file
def play_midi(midi_file):
    pygame.mixer.init()  # Initialize the mixer module
    pygame.mixer.music.load(midi_file)  # Load the MIDI file
    pygame.mixer.music.play()  # Start playing the MIDI file
    
    # Keep checking if the music is still playing
    while pygame.mixer.music.get_busy():
        time.sleep(0.1)  # Small delay to prevent busy-waiting

# Function to handle user input for quitting
def check_for_exit():
    input("Press Enter to stop playback...\n")
    pygame.mixer.music.stop()

# Main script
midi_file = "output.mid"  # Replace with the path to your MIDI file

# Start playback in a separate thread so we can check for user input simultaneously
playback_thread = threading.Thread(target=play_midi, args=(midi_file,))
playback_thread.start()

# Wait for user input to stop the music
check_for_exit()
playback_thread.join()  # Wait for the playback thread to finish

print("Playback stopped.")
pygame.mixer.quit()
