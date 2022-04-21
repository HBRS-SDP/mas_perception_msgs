float32 left_eye_center_x      # position of the left eye of the face
float32 left_eye_center_y
float32 right_eye_center_x     # position of the right eye of the face
float32 right_eye_center_y

ObjectView[] views          # extracted views of the face (RGB image, point cloud, image embedding);
			     # an array since we may have multiple views of the same person
