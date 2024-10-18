import mido
from mido import MidiFile, MidiTrack, Message, MetaMessage

# Fisher Price Music Box note range: D7 (98) to G4 (67)
fisher_price_notes = [67, 69, 71, 72, 74, 76, 77, 79, 81, 83, 84, 86, 88, 89, 91, 93, 95, 98]

def closest_fisher_price_note(note):
    """Map the input note to the closest note within the Fisher Price Music Box range."""
    return min(fisher_price_notes, key=lambda x: abs(x - note))

def process_midi(input_file, output_file):
    try:
        # Load the original MIDI file
        midi = MidiFile(input_file)

        # Create a new MIDI file for the output
        new_midi = MidiFile()
        tempo = None
        
        for track in midi.tracks:
            new_track = MidiTrack()
            new_midi.tracks.append(new_track)

            for msg in track:
                # If the message is a note-on or note-off event
                if msg.type in ['note_on', 'note_off']:
                    original_note = msg.note

                    # Ensure the note is within MIDI note range (0-127)
                    if 0 <= original_note <= 127:
                        # Adjust the note to the closest Fisher Price Music Box note
                        adjusted_note = closest_fisher_price_note(original_note)
                        # Keep the rhythm and other parameters unchanged
                        new_msg = Message(msg.type, note=adjusted_note, velocity=msg.velocity, time=msg.time)
                        new_track.append(new_msg)
                    else:
                        print(f"Skipping note {original_note}, out of valid MIDI range (0-127).")
                        continue
                else:
                    # Copy all other types of messages (e.g., tempo changes)
                    if msg.type == 'set_tempo':
                        tempo = msg.tempo
                    new_track.append(msg)

        # Set the tempo to the original MIDI file's tempo or 60 BPM if undefined
        if tempo is None:
            tempo = mido.bpm2tempo(60)  # Set to 60 BPM if no tempo is specified
        new_midi.tracks[0].insert(0, MetaMessage('set_tempo', tempo=tempo))

        # Save the modified MIDI file
        new_midi.save(output_file)
        print(f"Processed MIDI file saved as '{output_file}'.")

    except IOError:
        print("Error: Unable to open input file.")
    except mido.MidiFileError:
        print("Error: Invalid MIDI file.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Example usage
input_file = "input.mid"
output_file = "output.mid"
process_midi(input_file, output_file)
