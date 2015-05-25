%%Define the event function
function [VALUE, ISTERMINAL, DIRECTION] = MyEventFunction(t,y,Z,state)
%%The event function stops the intergration is VALUE == 0 and 
%%ISTERMINAL==1

%%a. Define the timeout in seconds
TimeOut = 5; %sec

%%b. The solver runs until this VALUE is negative (does not change the sign)
VALUE = toc-TimeOut;


%%c. The function should terminate the execution, so
ISTERMINAL = 1;

%%d.The direction does not matter
DIRECTION = 0;
end
