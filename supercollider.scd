(
// Test that your MIDI file can be tosed and listen to the r
f = FisherPriceRecords.openMIDI("~/default.mid".standardizePath, "Default");
f.success.if({
    f.p.play;
})
//Note that the durations in the pattern are from the MIDI file.
//When you create the disk, the notes will be scaled to cover one rotation
// of the disk.
//The rotational speed of the disk depends on how tightly the spring is wound.
​
)
(
f.realise(2); // This is a short loop, so repeat it
f.write("~/default.scad".standardizePath);
)