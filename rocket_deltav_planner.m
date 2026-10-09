% Multi-Stage Rocket Delta-V Budget Planner
% Calculates staging performance and evaluates mission viability

clear; clc;

% Physical Constants
g0 = 9.80665;

% Mission Benchmarks (in m/s)
benchmarks = struct(...
    'LEO', 9400, ... % Low Earth Orbit
    'GTO', 11800, ... % Geostationary Transfer Orbit
    'TLI', 12000, ... % Trans-Lunar Injection (Moon)
    'TMI', 13000 ... % Trans-Mars Injection (Mars)
    );

fprintf('=== MULTI-STAGE ROCKET DELTA-V BUDGET PLANNER ===\n\n');

% Hardcoded Vehicle Inputs (SLS) (Change as necessary)
payload_mass = 27000; % Payload mass in kg

% Define each stage in sequential order: [Stage 1 (SRBs), Stage 2 (Core),
% Stage 3 (ICPS)]
dry_mass = [200000, 98000, 3500];
fuel_mass = [1260000, 987000, 28500];
Isp = [269, 452, 465];

num_stages = length(dry_mass);

% Delta-V Calculation
delta_v_stage = zeros(1, num_stages);

for i = 1:num_stages
    % Total mass at ignition of stage i (includes upper stages and payload)
    m_initial = payload_mass + sum(dry_mass(i:num_stages)) + sum(fuel_mass(i:num_stages));

    % Total mass after stage i burnout (fuel spent)
    m_final = m_initial - fuel_mass(i);

    % Tsiolkovsky Rocket Equation
    delta_v_stage(i) = Isp(i) * g0 * log(m_initial / m_final);
end

total_delta_v = sum(delta_v_stage);

% Output Stage Breakdown
fprintf('\n=================================================\n');
fprintf(' PERFORMANCE SUMMARY \n');
fprintf('=================================================\n');
for i = 1:num_stages
    fprintf('Stage %d Delta-V: %8.2f m/s (%6.2f km/s)\n', i, delta_v_stage(i), delta_v_stage(i)/1000);
end
fprintf('-------------------------------------------------\n');
fprintf('TOTAL DELTA-V : %8.2f m/s (%6.2f km/s)\n', total_delta_v, total_delta_v/1000);
fprintf('=================================================\n\n');

% Accounting for Launch Losses
losses = 1800; % 1.8 km/s loss budget (gravity & atmospheric drag)
effective_delta_v = total_delta_v - losses;

fprintf('Effective Net Delta-V (minus 1.8 km/s losses): %.2f km/s\n\n', effective_delta_v / 1000);

% Benchmark Checklist (GO / NO-GO)
fprintf('=== MISSION BENCHMARK EVALUATION ===\n');

targets = fieldnames(benchmarks);
for k = 1:numel(targets)
    target_name = targets{k};
    req_dv = benchmarks.(target_name);

    if effective_delta_v >= req_dv
        status = '[ GO ]';
    else
        status = '[ NO-GO ]';
    end
   
    fprintf('%-30s Required: %5.1f km/s | Status: %s\n', target_name, req_dv/1000, status);
end

% VISUALIZATION: BAR CHART FIGURE PLOT
figure('Name', 'Rocket Staging Delta-V Analysis', 'NumberTitle', 'off', 'Position', [100, 100, 900, 500]);

% Convert values to km/s for cleaner plot axes
dv_stage_kms = delta_v_stage / 1000;
effective_dv_kms = effective_delta_v / 1000;

% Subplot 1: Stage-by-Stage Breakdown
subplot(1, 2, 1);
stage_labels = arrayfun(@(x) sprintf('Stage %d', x), 1:num_stages, 'UniformOutput', false);
b1 = bar(dv_stage_kms, 'FaceColor', [0.2 0.4 0.8]);
grid on;
ylabel('\Delta v (km/s)', 'FontSize', 11, 'FontWeight', 'bold');
title('Delta-V Contribution per Stage', 'FontSize', 12);
set(gca, 'XTickLabel', stage_labels, 'FontSize', 10);

% Add data value labels on top of each bar
text(1:num_stages, dv_stage_kms, num2str(dv_stage_kms', '%.2f km/s'), ...
    'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom', ...
    'FontSize', 10, 'FontWeight', 'bold');

ylim([0, max(dv_stage_kms)*1.25]); % Headroom for text labels
hold off;