App.cable.subscriptions.create(
  { channel: "PollingChannel", code: "example" },

  {
    connected: function() {
      console.log("connected");
    },

    disconnected: function() {
      console.log("disconnected");
    },

    rejected: function() {
      console.log("rejected");
    },

    received: function(data) {
      console.log(data);

      myChart.data.datasets[0].data = [
        _.find(data, function(vote) { 
          return vote.value == "yes";
        }).vote_count,
        _.find(data, function(vote) { 
          return vote.value == "no";
        }).vote_count,
        _.find(data, function(vote) { 
          return vote.value == "maybe";
        }).vote_count
      ];
      myChart.update();
    }
  }
);
