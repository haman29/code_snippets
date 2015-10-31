document.addEventListener("DOMContentLoaded", function(event) {
  // 6.
  var width = 960;
  var height = 500;
  var radius = Math.min(width, height) / 2;

  var color = d3.scale.ordinal()
    .range(["#98abc5", "#8a89a6", "#7b6888", "#6b486b", "#a05d56", "#d0743c", "#ff8c00"]);

  var arc = d3.svg.arc()
    .outerRadius(radius - 10)
    .innerRadius(130);

  var pie = d3.layout.pie()
    .sort(null)
    .value(function(d) { return d.size; });

  // svgの定義
  var svg = d3.select("body").append("svg")
    .attr("width", width)
    .attr("height", height)
    .append("g")
    .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");

  data = [
    {role: 'ゴミ箱', size: 100},
    {role: '冷蔵庫', size: 100},
    {role: '', size: 100},
    {role: 'ホワイトボード', size: 100},
    {role: 'ルンバ', size: 100},
    {role: '', size: 100},
    {role: '掃除機', size: 100},
    {role: '会議室', size: 100},
    {role: '', size: 100},
  ];

  var g = svg.selectAll(".arc")
    .data(pie(data))
    .enter().append("g")
    .attr("class", "arc");

  g.append("path")
    .attr("d", arc)
    .style("fill", function(d) { return color(d.data.role); });

  g.append("text")
    .attr("transform", function(d) { return "translate(" + arc.centroid(d) + ")"; })
    .attr("dy", ".35em")
    .style("text-anchor", "middle")
    .text(function(d) { return d.data.role; });


  members = [
    {name: 'Aさん', size: 100},
    {name: 'Bさん', size: 100},
    {name: 'Cさん', size: 100},
    {name: 'Dさん', size: 100},
    {name: 'Eさん', size: 100},
    {name: 'Fさん', size: 100},
    {name: 'Gさん', size: 100},
    {name: 'Hさん', size: 100},
    {name: 'Iさん', size: 100},
  ];

  // 内側の円
  var arcMember = d3.svg.arc()
    .outerRadius(130)
    .innerRadius(30);

  var member_g = svg.append("g").attr("id", "members")
  var g = member_g.selectAll(".arc-member")
    .data(pie(members))
    .enter().append("g")
    .attr("class", "arc-member");

  g.append("path")
    .attr("d", arcMember)
    .style("fill", function(d) { return color(d.data.name); });

  g.append("text")
    .attr("transform", function(d) { return "translate(" + arcMember.centroid(d) + ")"; })
    .attr("dy", ".35em")
    .style("text-anchor", "middle")
    .text(function(d) { return d.data.name; });

  // Go
  var position = 1;
  var spin = function(){
    member_g.transition().duration(1000).attr('transform', function(d){
      geta = Math.floor( Math.random() * members.length) + 1;
      return "rotate(" + (360 / members.length) * (position++ + geta) + ")";
      // return "rotate(" + (360 / members.length) * position++ + ")"; // gonext
    });
  };
  var goButton = svg.append("circle").attr('r', 20)
                      .attr('fill', 'red')
                      .on('click', spin);

  // svg.append("text").text('▶︎')
    // .attr("dy", ".35em").style("text-anchor", "middle") // centering
    // .style("fill", "gray")
    // .on('click', spin);
});
