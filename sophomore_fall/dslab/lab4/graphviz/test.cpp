#include <boost/graph/graphviz.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <string>
#include <fstream>
#include <boost/graph/iteration_macros.hpp>
#include<vector>
int main(int,char*[])
{
  typedef std::pair<int,int> Edge;
  Edge used_by[] = {
    Edge(1, 5), Edge(1, 7), Edge(1, 2), Edge(2, 7), Edge(2, 12),
    Edge(3, 7), Edge(3, 10), Edge(3, 12),
    Edge(4, 5), Edge(5, 6),Edge(6, 9),Edge(7, 8),Edge(8, 9),Edge(9, 14),
    Edge(10, 11),Edge(11, 14),Edge(12, 13),Edge(13, 14),Edge(14, 15)
  };
  const int nedges = sizeof(used_by)/sizeof(Edge);
  double weights[nedges];
  std::fill(weights, weights + nedges, 1.0);
  weights[1] = 0.5;
  weights[2] = 1.5;
  weights[3] = 2.5;

  using namespace boost;

  typedef adjacency_list< vecS, vecS, directedS,
    property< vertex_color_t, default_color_type >,
    property< edge_weight_t, double >
    > Graph;
  Graph g_write(used_by, used_by + nedges, weights, 16);
  // write
  dynamic_properties dp;
  dp.property("weight", get(edge_weight, g_write));
  dp.property("node_id", get(vertex_index, g_write));
  std::ofstream ofs( "test.dot" );
  write_graphviz_dp(ofs, g_write, dp);

  return 0;
}
