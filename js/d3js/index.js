document.addEventListener("DOMContentLoaded", function(event) {
  // 1.
  // d3.select("body").append("p").text("新しいパラグラフ！");

  // 2.
  // var dataset = [ 5, 10, 15, 20, 25 ];
  // d3.select("body").selectAll("p")
    // .data(dataset)
    // .enter()
    // .append("p")
    // .text("新しいパラグラフ！");

  // 3.
  // var dataset = [ 5, 10, 15, 20, 25 ];
  // d3.select("body").selectAll("p")
    // .data(dataset)
    // .enter()
    // .append("p")
    // .text(function(d) { return d; })
    // .style("color", function(d) {
      // if (d > 15) {   // 15 が区切り
        // return "red";
      // } else {
        // return "black";
      // }
    // });

  // 4. 棒グラフ
  // var dataset = [ 5, 10, 15, 20, 25 ];

  // d3.select("body").selectAll("div")
    // .data(dataset)
    // .enter()
    // .append("div")
    // .attr("class", "bar")
    // .style("height", function(d) {
      // return (d * 5) + "px";
    // });

  // 5.
  var dataset = [ 5, 10, 15, 20, 25 ];
  var svg = d3.select("body")
    .append("svg")
    .attr("width", 500)
    .attr("height", 50);
  var circles = svg.selectAll("circle")
    .data(dataset)
    .enter()
    .append("circle");
  circles.attr("cx", function(d, i) {
      return (i * 50) + 25;
    })
    .attr("cy", 50/2)
    .attr("r", function(d) {
      return d;
    });

});
