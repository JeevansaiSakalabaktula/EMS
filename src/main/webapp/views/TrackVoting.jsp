<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Voting Statistics</title>
    <style>
        /* Background Image */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('/images/ReportBackgound.jpeg'); /* Path to your background image */
            background-position: left center;
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
        }

        /* Table Styling */
        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.8);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #ddd;
        }

        caption {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        /* Heading Styling */
        h1 {
            text-align: center;
            font-size: 2em;
            font-weight: bold;
            margin: 30px auto;
            color: #333;
        }

        /* Chart Container */
        #chartsContainer {
            display: flex;
            justify-content: space-around;
            align-items: center;
            width: 100%;
            margin: 20px auto;
        }

        canvas {
            max-width: 100%;
            height: auto;
        }

        .chartBox {
            width: 40%;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        function generateVotingData() {
            var parties = ['TDP', 'YCP', 'BJP', 'Janasena', 'Congress'];
            var table = document.getElementById("votingTable");

            var votes = [];
            var totalVotes = 0;

            for (var i = 1; i <= parties.length; i++) {
                var voteCount = Math.floor(Math.random() * 10000) + 5000; // Generate votes between 5000 and 15000
                table.rows[i].cells[0].textContent = parties[i - 1];
                table.rows[i].cells[1].textContent = voteCount;

                votes.push(voteCount);
                totalVotes += voteCount;
            }

            generatePieChart(parties, votes, totalVotes);
            generateBarChart(parties, votes);
        }

        function generatePieChart(parties, votes, totalVotes) {
            var ctx = document.getElementById('votingPieChart').getContext('2d');
            var percentages = votes.map(vote => ((vote / totalVotes) * 100).toFixed(2));

            new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: parties.map((party, i) => `${party} (${percentages[i]}%)`),
                    datasets: [{
                        data: votes,
                        backgroundColor: ['#4CAF50', '#FF5722', '#FFC107', '#2196F3', '#9C27B0'],
                        hoverBackgroundColor: ['#66BB6A', '#FF7043', '#FFD54F', '#42A5F5', '#AB47BC']
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            position: 'top'
                        }
                    }
                }
            });
        }

        function generateBarChart(parties, votes) {
            var ctx = document.getElementById('votingBarChart').getContext('2d');

            new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: parties,
                    datasets: [{
                        label: 'Votes',
                        data: votes,
                        backgroundColor: ['#4CAF50', '#FF5722', '#FFC107', '#2196F3', '#9C27B0']
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        x: {
                            title: {
                                display: true,
                                text: 'Parties'
                            }
                        },
                        y: {
                            beginAtZero: true,
                            title: {
                                display: true,
                                text: 'Number of Votes'
                            }
                        }
                    }
                }
            });
        }

        window.onload = generateVotingData;
    </script>
</head>
<body>
    <jsp:include page="Navbar.jsp" />
    <table id="votingTable">
        <caption><h1>Voting Status</h1></caption>
        <thead>
            <tr>
                <th>Party</th>
                <th>Votes</th>
            </tr>
        </thead>
        <tbody>
            <tr><td></td><td></td></tr>
            <tr><td></td><td></td></tr>
            <tr><td></td><td></td></tr>
            <tr><td></td><td></td></tr>
            <tr><td></td><td></td></tr>
        </tbody>
    </table>

    <!-- Heading -->
    <h1>Statistics</h1>

    <!-- Chart Section -->
    <div id="chartsContainer">
        <!-- Pie Chart -->
        <div class="chartBox">
            <canvas id="votingPieChart"></canvas>
        </div>

        <!-- Bar Chart -->
        <div class="chartBox">
            <canvas id="votingBarChart"></canvas>
        </div>
    </div>
</body>
</html>
