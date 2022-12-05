load("mattPulseOx.csv");
sp = mattPulseOx(:,end);
sp = sp(sp~=0) * 100;
t = 1/100 * (1:length(sp));

plot(t,sp,"LineWidth",2)
xlabel("Time (s)")
ylabel("SpO_2 (%)")
ylim([50,100])