function stateVectorUpdate()
%This function updates the system-state vector.
global stateVector;
global IqGQuaternion;
global bg;
global G_v;
global ba;
global G_p;
global g_p_f;
stateVector = [IqGQuaternion bg G_v ba G_p g_p_f];
end

%remark: size of statevector changeable by terminal commands; not good
%design