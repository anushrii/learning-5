function cost = getCostNOW(feat,w)
costmap = zeros(size(feat{1},1),size(feat{1},2));
numfeats  = size(feat,2);

for i = 1:numfeats
    weightedF = w(i)*double(feat{i});
    costmap = weightedF + costmap;
end

cost = (costmap) +1;