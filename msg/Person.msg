string identity                         # unique string that identify the person
string name                             # given name, e.g. 'John Doe'
float32 age
Face face

ObjectView[] views    # extracted views of the person (RGB image, point cloud, image embedding);
                                          # an array since we may have multiple views of the same person

string[] attribute_names                # e.g. gender, emotion,...
string[] attributes                     # e.g. male, angry,...
float32[] attribute_confidences         # e.g. 0.71, 0.80,...

geometry_msgs/PoseStamped pose          # 3D pose of the detected person

# fields used by `mcr_people_tracking`, `mcr_leg_detection`, and `mdr_follow_person`
# potentially removable since the packages themselves are old and not well-maintained and possibly overlapping
# with 'wg-perception/people'
std_msgs/Header header
uint32 id
bool is_tracked                         # is the user tracked
bool is_occluded                        # is the user occluded
float32 probability                     # probability of beeing a person at this pose
