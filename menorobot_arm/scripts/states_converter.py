#!/usr/bin/env python
import roslib; roslib.load_manifest('menorobot_arm')
import rospy
from dynamixel_msgs.msg import JointState as dxl_JointState
from sensor_msgs.msg import JointState

def br_callback(data):       
    global msg
    msg.name[0]=data.name
    msg.position[0]=data.current_pos
    msg.velocity[0]=data.velocity
    msg.effort[0]=data.load

def sh_callback(data):       
    global msg
    msg.name[1]=data.name
    msg.position[1]=data.current_pos
    msg.velocity[1]=data.velocity
    msg.effort[1]=data.load

def e1_callback(data):       
    global msg
    msg.name[2]=data.name
    msg.position[2]=data.current_pos
    msg.velocity[2]=data.velocity
    msg.effort[2]=data.load

def e2_callback(data):       
    global msg
    msg.name[3]=data.name
    msg.position[3]=data.current_pos
    msg.velocity[3]=data.velocity
    msg.effort[3]=data.load

def lf_callback(data):       
    global msg
    msg.name[4]=data.name
    msg.position[4]=data.current_pos
    msg.velocity[4]=data.velocity
    msg.effort[4]=data.load

def rf_callback(data):       
    global msg
    msg.name[5]=data.name
    msg.position[5]=data.current_pos
    msg.velocity[5]=data.velocity
    msg.effort[5]=data.load



def states_converter():
    global pub
    global msg
    msg = JointState()
    for i in range(6):
        msg.name.append("")
        msg.position.append(0.0)
	msg.velocity.append(0.0)
	msg.effort.append(0.0)
    rospy.init_node('states_converter', anonymous=True)
    rospy.Subscriber("/base_rotation_controller/state", dxl_JointState, br_callback)
    rospy.Subscriber("/shoulder_controller/state", dxl_JointState, sh_callback)
    rospy.Subscriber("/elbow_controller/state", dxl_JointState, e1_callback)
    rospy.Subscriber("/wrist_controller/state", dxl_JointState, e2_callback)
    rospy.Subscriber("/left_finger_controller/state", dxl_JointState, lf_callback)
    rospy.Subscriber("/right_finger_controller/state", dxl_JointState, rf_callback)
    pub = rospy.Publisher('joint_states', JointState)
    while not rospy.is_shutdown():
	#rospy.loginfo("running states_converter.py") 
    	msg.header.stamp = rospy.Time.now()
    	pub.publish(msg)
	rospy.sleep(0.1)
	#rospy.loginfo(msg)
if __name__ == '__main__':
    #rospy.loginfo("Starting states_converter.py")
    states_converter()


