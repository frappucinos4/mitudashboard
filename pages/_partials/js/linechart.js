// linechart.js

const labels = [<?php echo "'" . implode("', '", $tanggal) . "'"; ?>]; 
const data = {
  labels: labels,
  datasets: [{
    label: 'Total Harga Transaksi',
    data: [<?php echo implode(', ', $total_harga); ?>], 
    fill: false,
    borderColor: 'rgb(75, 192, 192)',
    tension: 0.1
  }]
};

var ctx = document.getElementById('lineChart').getContext('2d');
var chart = new Chart(ctx, {
  type: 'line',
  data: data,
  options: {
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
});
