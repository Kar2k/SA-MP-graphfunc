#include <a_samp>
#include <a_graphfunc>

new
	Graph:MY_GRAPH;

public
	GRAPHIC::Init()
{
	MY_GRAPH = GRAPHIC::Create(200.0, 250.0, -50, -50, 50, 50);
	GRAPHIC::XYAxisColor(MY_GRAPH, 0xFFFFFF55, 0xFFFFFF55);

	GRAPHIC::UseBackground(MY_GRAPH, 1);
	GRAPHIC::BackgroundColor(MY_GRAPH, 0x00000033);

	GRAPHIC::AddPoint(MY_GRAPH, 50,  0, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 40, 10, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 30, 20, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 20, 30, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 10, 40, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH,  0, 50, 0x25478588);

	GRAPHIC::AddPoint(MY_GRAPH, -50,  0, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -40, 10, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -30, 20, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -20, 30, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -10, 40, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH,   0, 50, 0x25478588);

	GRAPHIC::AddPoint(MY_GRAPH, 50,   0, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 40, -10, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 30, -20, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 20, -30, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, 10, -40, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH,  0, -50, 0x25478588);

	GRAPHIC::AddPoint(MY_GRAPH, -50,   0, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -40, -10, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -30, -20, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -20, -30, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH, -10, -40, 0x25478588);
	GRAPHIC::AddPoint(MY_GRAPH,   0, -50, 0x25478588);
	return 1;
}

public
	OnPlayerSpawn(playerid)
{
	GRAPHIC::ShowForPlayer(playerid, MY_GRAPH);
	return 1;
}