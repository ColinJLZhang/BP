# Leaves Segmation Based On BP
This is a leave segmentation based on BP
## Structure
- Data:
- Code:
- Result:
## Steps
1. Train the work:  
    - Run Zoo_tezhen_train get *TEZHEN_sum* as nntool input  
    - Run Zoo_train get *gamma* as nntool target  
    - Start Nntool：
          Import TEZHENG(input)
          Import gamma(target)
          Set new network:
            Training function:TRAINSCG
            Number of layers:2
            Number of neurous:10
          *Train the network*
 2. Using network to segment the image
    - Run zoo_tezhen_test get TEZHEN_test as simulate input.
    - Simulate TEZHEN_test
    - Show image:run zoo_nntool.m to show the image
    
## Network performance
![image](/result/training%20regression.png)  
![image](/result/training%20state.png)

## Result
![image](/result/input_2017-01-20%20101203.jpg)
![image](/result_2017-01-20%20101203.jpg)
