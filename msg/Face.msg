float32 lefteyecenterx      # position of the left eye of the face
float32 lefteyecentery
float32 righteyecenterx     # position of the right eye of the face
float32 righteyecentery

ObjectView[] views          # extracted views of the face (RGB image, point cloud, image embedding);
			     # an array since we may have multiple views of the same person
