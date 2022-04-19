sensor_msgs/Image scene_image               # store scene image which contain people
Person[] people                             # list of people in scene
sensor_msgs/RegionOfInterest[] face_rois    # bounding boxes of people's faces
sensor_msgs/RegionOfInterest[] body_rois    # bounding boxes of people's full body
uint32 num_detected_people                  # should match the length of 'people' and ROI fields
