import Chart from 'chart.js';

// DOUGNUT

const initChart = () => {
    const myChart = document.getElementsByClassName('chart');
    if (myChart) {
      Array.from(myChart).forEach((chart) => {
        new Chart(chart, {
        type: 'doughnut',
        data: {
          datasets: [{
            label: "Population (millions)",
            backgroundColor: ["#202135", "#DCE3FD"],
            data: [parseInt(chart.dataset.progress, 10), 100 - parseInt(chart.dataset.progress, 10) ]
          }]
        },
        options:
        {
          responsive: false,
          title: {
            display: true
          },
          legend: {
            display: false
         },
         tooltips: {
            enabled: false
         }
        }});
      });


// RADAR

      const radar = document.getElementById('radar');

      const marksData = {
        labels: ["Agriculture", "Alimentation", "Energie", "Santé", "Envrionnemnt"],
        datasets: [{
          label: "Catégories d'impact",
          backgroundColor: "#202135",
          data: [80, 90, 25, 40, 65]
        }]
      };

      if (radar) {
        const radarChart = new Chart(radar, {
          type: 'radar',
          data: marksData
          ,options: {
            scale: {
                ticks: {
                    display: false
                }
            },
            legend: {
                    display: false
                 },
                 tooltips: {
                    enabled: false
                 }
          }
        });
      }
    }
}

export { initChart };
