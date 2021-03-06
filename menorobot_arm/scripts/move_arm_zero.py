#!/usr/bin/env python
import roslib; roslib.load_manifest('menorobot_arm')
import rospy
from std_msgs.msg import Float64
 
 
def move_arm():
	pub_base_rotation=rospy.Publisher('/base_rotation_controller/command', Float64)
	pub_shoulder = rospy.Publisher('/shoulder_controller/command', Float64)
	pub_elbow = rospy.Publisher('/elbow_controller/command', Float64)	
	pub_wrist = rospy.Publisher('/wrist_controller/command', Float64)	
	pub_left_finger = rospy.Publisher('/left_finger_controller/command', Float64)
	pub_right_finger = rospy.Publisher('/right_finger_controller/command', Float64)
	rospy.init_node('move_arm')
	#while not rospy.is_shutdown():
	br = Float64(0.0)
	sh = Float64(0.0)
	e = Float64(0.0)
	wr = Float64(0.0)	
	lf = Float64(0.0) 	
	rf = Float64(0.0)
	rospy.loginfo('base_rotation_'+str(br))
	rospy.loginfo('shoulder_'+str(sh))
	rospy.loginfo('elbow_'+str(e))
	rospy.loginfo('wrist_'+str(wr))
	rospy.loginfo('left_finger_'+str(lf))
	rospy.loginfo('right_finger_'+str(rf))
	pub_base_rotation.publish(br)
	pub_shoulder.publish(sh)
	pub_elbow.publish(e)
	pub_wrist.publish(wr)
	pub_left_finger.publish(lf)
	pub_right_finger.publish(rf)
	rospy.sleep(1.0)
	pub_base_rotation.publish(br)
	pub_shoulder.publish(sh)
	pub_elbow.publish(e)
	pub_wrist.publish(wr)
	pub_left_finger.publish(lf)
	pub_right_finger.publish(rf)

 
if __name__ == '__main__':
	try:
		move_arm()
	except rospy.ROSInterruptException:
		pass
