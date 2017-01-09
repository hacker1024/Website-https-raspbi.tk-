<?php

echo '</pre><strong>UPTIME</strong><br /><pre>' . shell_exec('uptime');
echo '</pre><strong>CPU Temperature</strong><br /><pre>' . shell_exec('vcgencmd measure_temp');
echo '</pre><strong>Memory</strong><br /><pre>' . shell_exec('free -h');

echo '</pre><strong>CPU Utilization</strong><pre>';
$total_cpu = 'ps -e -o pcpu | tail -n +2 | sed \'{:q;N;s/\n/ + /g;t q}\' | bc';
$total_cpu_num = shell_exec($total_cpu);
$total_cpu_num = str_replace(array("\r", "\n", '/\s+/'), '', $total_cpu_num);
echo $total_cpu_num . "%";
echo '</pre><strong>Top 10 CPU ultization Chart</strong><br /><pre>' . shell_exec('ps -eo %cpu,comm --sort %cpu | tail');
echo '</pre><strong>Disk Space:</strong><br /><pre>' . shell_exec('df -h');
?>