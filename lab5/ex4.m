% Plot the square
plot([1,0,0,1,1],[0,0,1,1,0],'g');
hold on;

for n = 1:39
    plot([n/40,0],[0,1-(n/40)],'k')
    hold on;
end

title('Junior High School Art Project');


