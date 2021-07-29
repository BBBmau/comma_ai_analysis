browseVignettes("rhdf5")
library("rhdf5")


h5ls("2016-06-08--11-46-01.h5")
brakeSubset01 <- h5read("2016-06-08--11-46-01.h5" , name = "brake")
SpeedSubset01 <- h5read("2016-06-08--11-46-01.h5" , name = "speed")
SteeringSubset01 <- h5read("2016-06-08--11-46-01.h5" , name = "steering_torque")

h5ls("2016-04-21--14-48-08.h5")
brakeSubset08 <- h5read("2016-04-21--14-48-08.h5", name = "brake")
SpeedSubset08 <- h5read("2016-04-21--14-48-08.h5" , name = "speed")
SteeringSubset08 <- h5read("2016-04-21--14-48-08.h5" , name = "steering_torque")


# Data from Stop Sign / Stop Light Scenarios: Speed / Brake Depression
# S1
speedS1_SS <- SpeedSubset01[3090: 3190]
brakeS1_SS <- brakeSubset01[3090: 3190]
# S2
speedS2_SS <- SpeedSubset01[3390: 3490]
brakeS2_SS <- brakeSubset01[3390: 3490]
# S3
speedS3_SS <- SpeedSubset01[16690: 16790]
brakeS3_SS <- brakeSubset01[16690: 16790]
# S4
speedS4_SS <- SpeedSubset08[27330: 27430]
brakeS4_SS <- brakeSubset08[27330: 27430]
# S5
speedS5_SS <- SpeedSubset08[26645: 26745]
brakeS5_SS <- brakeSubset08[26645: 26745]

# PLOT OF SPEED
plot(0:100,speedS1_SS, ylim = c(-1,9.5))
points(0:100, speedS2_SS, col = "green")
points(0:100, speedS3_SS, col = "red")
points(0:100, speedS4_SS, col = "blue")
points(0:100, speedS5_SS, col = "orange")

# PLOT OF BRAKE DEPRESSION
plot(0:100,brakeS1_SS, ylim = c(-1,1000))
points(0:100, brakeS2_SS, col = "green")
points(0:100, brakeS3_SS, col = "red")
points(0:100, brakeS4_SS, col = "blue")
points(0:100, brakeS5_SS, col = "orange")
# ======================================= #

# Freeway Steering: Speed / Steering Angle
speedS1_FS <- SpeedSubset01[10888: 11888]
SteeringS1_FS <- SteeringSubset01[10888: 11888]
# S2
speedS2_FS <- SpeedSubset01[15144: 16144]
SteeringS2_FS <- SteeringSubset01[15144: 16144]
# S3
speedS3_FS <- SpeedSubset01[6000: 7000]
SteeringS3_FS <- SteeringSubset01[6000: 7000]
# S4
speedS4_FS <- SpeedSubset01[13000: 14000]
SteeringS4_FS <- SteeringSubset01[13000: 14000]
# S5
speedS5_FS <- SpeedSubset01[15000: 16000]
SteeringS5_FS <- SteeringSubset01[15000: 16000]

# PLOT OF SPEED
plot(0:1000,speedS1_FS, ylim = c(-1,11))
points(0:1000, speedS2_FS, col = "green")
points(0:1000, speedS3_FS, col = "red")
points(0:1000, speedS4_FS, col = "blue")
points(0:1000, speedS5_FS, col = "orange")

# PLOT OF STEERING
plot(0:1000,SteeringS1_FS, ylim = c(-50,50))
lines(0:1000, SteeringS2_FS, col = "green")
lines(0:1000, SteeringS3_FS, col = "red")
lines(0:1000, SteeringS4_FS, col = "blue")
lines(0:1000, SteeringS5_FS, col = "orange")

# ======================================= #

# Lane Change: Speed / Steering Angle
speedS1_LC <- SpeedSubset01[11545: 11645]
SteeringS1_LC <- SteeringSubset01[11545: 11645]
# S2
speedS2_LC <- SpeedSubset01[12525: 12625]
SteeringS2_LC <- SteeringSubset01[12525: 12625]
# S3
speedS3_LC <- SpeedSubset01[8100: 8200]
SteeringS3_LC <- SteeringSubset01[8100: 8200]
# S4
speedS4_LC <- SpeedSubset01[4950: 5050]
SteeringS4_LC <- SteeringSubset01[4950: 5050]
# S5
speedS5_LC <- SpeedSubset01[8940: 9040]
SteeringS5_LC <- SteeringSubset01[8940: 9040]

# PLOT OF SPEED
plot(0:100,speedS1_LC, ylim = c(-1,11))
points(0:100, speedS2_LC, col = "green")
points(0:100, speedS3_LC, col = "red")
points(0:100, speedS4_LC, col = "blue")
points(0:100, speedS5_LC, col = "orange")

# PLOT OF STEERING
plot(0:100,SteeringS1_LC, ylim = c(-360,180))
points(0:100, SteeringS2_LC, col = "green")
points(0:100, SteeringS3_LC, col = "red")
points(0:100, SteeringS4_LC, col = "blue")
points(0:100, SteeringS5_LC, col = "orange")

# ======================================= #

# Intersection Turn: Speed / Steering Angle
speedS1_IT <- SpeedSubset01[4470: 4670]
SteeringS1_IT <- SteeringSubset01[4470: 4670]
# S2
speedS2_IT <- SpeedSubset01[10050: 10250]
SteeringS2_IT <- SteeringSubset01[10050: 10250]
# S3
speedS3_IT <- SpeedSubset01[16600: 16800]
SteeringS3_IT <- SteeringSubset01[16600: 16800]
# S4
speedS4_IT <- SpeedSubset01[6675: 6875]
SteeringS4_IT <- SteeringSubset01[6675: 6875]
# S5
speedS5_IT <- SpeedSubset01[12000: 12200]
SteeringS5_IT <- SteeringSubset01[12000: 12200]

# PLOT OF SPEED
plot(0:200,speedS1_IT, ylim = c(-1,11))
points(0:200, speedS2_IT, col = "green")
points(0:200, speedS3_IT, col = "red")
points(0:200, speedS4_IT, col = "blue")
points(0:200, speedS5_IT, col = "orange")

# PLOT OF STEERING
plot(0:200,SteeringS1_IT, ylim = c(-360,180))
points(0:200, SteeringS2_IT, col = "green")
points(0:200, SteeringS3_IT, col = "red")
points(0:200, SteeringS4_IT, col = "blue")
points(0:200, SteeringS5_IT, col = "orange")