% for i = [1:3]
%     [vars, objs, runtime] = borg(11,2,0, @DTLZ2, 50000,[0.01, 0.01], zeros(1,11),ones(1,11),  {'frequency',500, 'seed', i},1,1,sprintf('Checkpoint/%d', i));
% %    	[vars, objs, runtime] = nativeborg(nvars, nobjs, nconstrs, objectiveFcn, NFE, epsilons, lowerBounds, upperBounds,parameters, transposed, newCond, newCheckptFilename);%, oldCond, oldCheckptFilename);
%     objFile = sprintf('Objectives/DTLZ2_3_S%i.obj',i);
%     dlmwrite(objFile, objs, 'Delimiter', ' ');
% end

%Use the evaluation function DTLZ2.m in the folder
i=1%applying for one seed
[vars, objs, runtime] = borg(11,2,0, @DTLZ2, 30000,[0.01, 0.01], zeros(1,11),ones(1,11),  {'frequency',500, 'seed', i},1,1,'NewCheckpoint/1',1,'Checkpoint/1_nfe6575.checkpt');
%borg(nvars, nobjs, nconstrs, objectiveFcn, NFE, epsilons, lowerBounds, upperBounds, parameters,transposed, newCond, newCheckptFilename, oldCond, oldCheckptFilename)
objFile = sprintf('Objectives/DTLZ2_3_S%i.obj',i);
dlmwrite(objFile, objs, 'Delimiter', ' ');