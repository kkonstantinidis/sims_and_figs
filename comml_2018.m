stragglers = [0,2,4,6,7];
latency_time_ISU = [9.78544,9.78714,9.857623,9.895436,16.142964];
latency_time_USC = [9.242916,15.633231,15.63618533,15.70007267,15.66868033];

avg_comp_time_ISU = [6.437151333,7.725760333,9.015386333,10.29302933,10.947977];
avg_comp_time_USC = [6.435931333,7.720613667,9.009317333,10.28948467,10.94314967];

fig = figure();
plot(stragglers, latency_time_ISU, '-bo', stragglers, latency_time_USC, '--ro', 'LineWidth', 1.5);
grid on;
hold on;
xlabel('$S,\ \mathrm{Number\ of\ stragglers}$', 'Interpreter', 'LaTex', 'fontsize', 13);
ylabel('$\mathrm{Total\ computation\ latency\ (sec.)}$', 'Interpreter', 'LaTex', 'fontsize', 13);
leg = legend('$\mathrm{Proposed}$', '$\mathrm{Prior}$', 'Location', 'northwest');
set(leg, 'interpreter', 'latex');
hold off;