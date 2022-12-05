omega = -pi:0.01:pi;
f = 500/pi * omega;
z = exp(1i * omega);
order = 34;
H = zeros(size(omega));

for n = 1:order
    H = H + z.^n;
end
H = 1/order * H;

figure(1)
plot(f,abs(H),"LineWidth",2)
hold on
xline([-80,80],"LineWidth",2)
yline([0.1],"LineWidth",2)
xlabel("Frequency (Hz)")
ylabel("Gain")
text(90,0.6,"f=80Hz")
text(-200,0.6,"f=-80Hz")