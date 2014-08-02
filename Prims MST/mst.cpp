#include<iostream>
#include<ctime>
#include<fstream>
#include<cstring>
#include<cstdlib>

using namespace std;

/*
 * Structure for graph's adjacency list
 */
struct Vertex {
	int v;
	int cost;
	Vertex* next;
};

/*
 * Node structure for node of Fibonacci heap
 */

struct fnode {
	int v;
	int cost;
	int degree;
	bool childcut;
	fnode* left;
	fnode* right;
	fnode* parent;
	fnode* child;
};

/*
 * Fibonacci heap implementation
 */
class FibonacciHeap {

public:
	fnode* min;
	FibonacciHeap() {
		min = NULL;
	}

	void insert(int, int);
	fnode* removeMin();
	void decreaseKey(int, int);
	fnode* searchKey(int, fnode*);
	void pairwiseCombine();
	void print(fnode* r) {
		fnode* temp = r;
		int x;
		do { //same level traversal
			cout << "\t" << temp->v;
			temp = temp->right;
		} while (temp != r);
		cout << endl;
		if (r->child != NULL) {
			print(r->child);
		} else {
			temp = r;
			do { //same level traversal
				temp = temp->right;
				if (temp->child != NULL)
					print(temp->child);
			} while (temp != r);
		}

		if (r->parent != NULL) {

			fnode* temp2;
			temp = r->parent->right;

			if (temp->parent == NULL) {
				temp2 = min;
			} else
				temp2 = r->parent->parent->child;
			while (temp != temp2 && temp->child == NULL) {
				temp = temp->right;
			}
			if (temp != temp2)
				print(temp->child);

		} else if (r->parent == NULL) {

			r = r->right;
			while (r != min) {
				while (r != min && r->child == NULL) {
					r = r->right;
				}
				if (r->child != NULL)
					print(r->child);
			}
		}

	}
};

/*
 * Node insertion
 * @params v = vertex id, cost = cost of the vertex
 */
void FibonacciHeap::insert(int v, int cost) {

	fnode* node;
	node = new fnode();
	node->v = v;
	node->cost = cost;
	node->degree = 0;
	node->child = NULL;
	node->parent = NULL;
	node->childcut = false;

	if (min == NULL) { //i.e. first element
		node->left = node;
		node->right = node;
		min = node;
	} else {
		node->right = min->right;
		node->left = min;
		min->right = node;
		node->right->left = node;
		if (node->cost < min->cost) {
			min = node;
		}

	}
}

/*
 * Code for pairwise combine after reduce-min
 */
void FibonacciHeap::pairwiseCombine() {
	bool check = true;
	fnode* ini;
	fnode* other;
	fnode* temp;
	int x;
	while (check) {
		check = false;
		ini = min;
		other = ini->right;

		if (ini == NULL) {
			break;
		}
		do {

			while (other != ini && other != NULL) {

				if (ini->degree == other->degree) {
					check = true;
					temp = other->right;
					if (temp == ini && temp->right == other) {
						temp = NULL;
					}

					if (ini->cost <= other->cost) {	//make other child of ini

						ini->degree += 1;
						other->childcut = false;
						other->parent = ini;
						other->left->right = other->right;
						other->right->left = other->left;
						if (ini->degree > 1) {			//if ini has children
							other->left = ini->child;
							other->right = ini->child->right;

							ini->child->right->left = other;
							ini->child->right = other;

						} else if (ini->degree == 1) { //if other is the first child of ini

							ini->child = other;
							other->left = other;
							other->right = other;

						}
						other = ini;
					} else {
						//make ini child of other

						other->degree += 1;
						ini->childcut = false;
						ini->parent = other;
						ini->left->right = ini->right;
						ini->right->left = ini->left;
						if (other->degree > 1) {		//if other has children

							ini->left = other->child;
							ini->right = other->child->right;

							other->child->right->left = ini;
							other->child->right = ini;

						} else if (other->degree == 1) { //if other is the first child of ini

							other->child = ini;
							ini->left = ini;
							ini->right = ini;
						}

						ini = other;
					}

					other = temp;
				} else {										//unequal degree
					other = other->right;
				}
			}
			ini = ini->right;
			other = ini->right;
		} while (ini != min && ini != other);
	}
}

/*
 * Code for remove-min
 */
fnode* FibonacciHeap::removeMin() {
	fnode* temp_min;
	fnode* iter;
	if (min == NULL)
		return NULL;
	else {
		if (min->right != min) {
			temp_min = min;
			min = min->right;
			if (temp_min->child == NULL) {
				temp_min->left->right = temp_min->right;
				temp_min->right->left = temp_min->left;

			} else {
				temp_min->left->right = temp_min->child;
				temp_min->right->left = temp_min->child->left;
				temp_min->child->left->right = temp_min->right;
				temp_min->child->left = temp_min->left;

			}

			temp_min->left = NULL;
			temp_min->right = NULL;
			temp_min->child = NULL;

			iter = min->right;

			while (iter != min) {

				if (iter->cost < min->cost) {
					min = iter;
				}
				iter = iter->right;

			}
			if (min != NULL && min != min->right) {
				pairwiseCombine();
			}

			return temp_min;
		} else {
			temp_min = min;
			min = NULL;
			return temp_min;
		}
	}

}

/*
 * Code to search a vertex in the heap
 */
fnode* FibonacciHeap::searchKey(int v, fnode* r) {
	fnode* temp = r;
	fnode* found;

	do { //same level traversal
		if (temp->v == v) {
			found = temp;
			return found;
		}
		temp = temp->right;
	} while (temp != r);

	if (r->child != NULL) {

		found = searchKey(v, r->child);
		return found;
	} else {

		temp = r;
		do { //same level traversal
			temp = temp->right;
			if (temp->child != NULL) {
				found = searchKey(v, temp->child);
				return found;
			}
		} while (temp != r);
	}

	if (r->parent != NULL) {

		fnode* temp2;
		temp = r->parent->right;

		if (temp->parent == NULL) {
			temp2 = min;
		} else
			temp2 = r->parent->parent->child;
		while (temp != temp2 && temp->child == NULL) {
			temp = temp->right;
		}
		if (temp != temp2) {
			found = searchKey(v, temp->child);
			return found;
		}
	} else if (r->parent == NULL) {

		r = r->right;
		while (r != min) {
			while (r != min && r->child == NULL) {
				r = r->right;
			}
			if (r->child != NULL) {
				found = searchKey(v, r->child);
				return found;
			}
		}
	}
//	return found;
}

/*
 * Code to decrease the cost of vertex v
 */

void FibonacciHeap::decreaseKey(int v, int new_cost) {
	if (min != NULL) {
		fnode* temp = searchKey(v, min);

		if (temp->cost > new_cost)
			temp->cost = new_cost;

		if (temp->parent != NULL) {

			if (temp->cost < temp->parent->cost) {
				temp->parent->degree -= 1;
				if (temp->parent->child == temp) {
					if (temp->right == temp) {
						temp->parent->child = NULL;
					} else {
						temp->parent->child = temp->right;
						temp->left->right = temp->right;
						temp->right->left = temp->left;
					}
				}

				min->right->left = temp;
				temp->right = min->right;
				temp->left = min;
				min->right = temp;
				temp->childcut = false;

				if (min->cost > temp->cost) {
					min = temp;
				}

				//cascade cut
				while (temp->parent->childcut == true) {
					fnode* temp2;
					temp2 = temp;
					temp = temp->parent;
					temp2->parent = NULL;

					temp->childcut = false;
					temp->parent->degree -= 1;

					if (temp->parent->child == temp) {
						if (temp->right == temp) {
							temp->parent->child = NULL;
						} else {
							temp->parent->child = temp->right;
							temp->left->right = temp->right;
							temp->right->left = temp->left;
						}
					}

					min->right->left = temp;
					temp->right = min->right;
					temp->left = min;
					min->right = temp;

					if (min->cost > temp->cost) {
						min = temp;
					}
				}
				temp->parent = NULL;
			}
		}
	}
}

void random_mode(int, int);
void user_mode_simple(const char*);
void user_mode_fheap(const char*);
void prims(Vertex**, int, int);
void prims_fheap(Vertex**, int, int);

int main(int argc, const char* argv[]) {

	if (strcmp(argv[1], "-r") == 0) {
		int n = atoi(argv[2]);
		int d = atoi(argv[3]);
		random_mode(n, d);
	} else if (strcmp(argv[1], "-s") == 0) {

		user_mode_simple(argv[2]);
	} else if (strcmp(argv[1], "-f") == 0) {

		user_mode_fheap(argv[2]);
	}

}

void random_mode(int n, int d) {

	int edges = d * n * (n - 1) / 200;
	int i, j;
	int v1, v2, cost;

	int **temp_graph = new int*[n];
	for (i = 0; i < n; i++)
		temp_graph[i] = new int[n];

	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			if (i == j) {
				temp_graph[i][i] = 0;
			} else
				temp_graph[i][j] = -1;
		}
	}

	time_t t;

	srand((unsigned) time(&t));

	i = 0;
	bool connect = true;
	while (connect == true) {
		while (i < edges) {
			v1 = rand() % n;
			do
				v2 = rand() % n;
			while (v1 == v2);
			cost = rand() % 1000 + 1;

			if (temp_graph[v1][v2] < 0) {
				temp_graph[v1][v2] = cost;
				temp_graph[v2][v1] = cost;
				i++;
			}
		}

		bool *check;
		check = new bool[n];
		int count = 0;
		check[0] = true;
		for (i = 1; i < n; i++)
			check[i] = false;

		bool newl = true;
		while (newl) {
			newl = false;
			for (i = 0; i < n; i++) {
				if (check[i] == true) {
					for (int j = 0; j < n; j++) {
						if (temp_graph[i][j] > 0 && check[j] == false) {
							count++;
							check[j] = true;
							newl = true;
						}
					}
				}

				if (count == n - 1) {
					newl = false;
					break;
				}
			}
		}

		for (i = 0; i < n; i++) {
			if (check[i] == false)
				break;
		}

		if (i < n)
			connect = true;
		else
			connect = false;
	}
	Vertex **graph = new Vertex*[n];
	for (i = 0; i < n; i++) {
		graph[i] = NULL;
	}

	for (i = 0; i < n; i++) {
		for (j = 0; j < n; j++) {
			if (temp_graph[i][j] > 0) {
				Vertex *t1;
				t1 = new Vertex;
				t1->v = j;
				t1->cost = temp_graph[i][j];
				t1->next = graph[i];

				graph[i] = t1;

			}
		}
	}

	clock_t Start, Time;

	Start = clock();
	prims(graph, n, edges);
	Time = clock() - Start;
	int time = Time;
	cout << "time = " << time << endl;

	int x;

	Start = clock();
	prims_fheap(graph, n, edges);
	Time = clock() - Start;
	time = Time;
	cout << "time = " << time << endl;
}

void user_mode_simple(const char* file) {
	string line;
	int v, e;
	ifstream fin;
	fin.open(file, ios::in);
	getline(fin, line, ' ');
	v = atoi(line.c_str());
	getline(fin, line);
	e = atoi(line.c_str());
	int i, j;
	Vertex **graph = new Vertex*[v];
	for (i = 0; i < v; i++) {
		graph[i] = NULL;
	}

	int temp;
	while (!fin.eof()) {

		getline(fin, line, ' ');
		i = atoi(line.c_str());
		getline(fin, line, ' ');
		j = atoi(line.c_str());
		getline(fin, line);
		temp = atoi(line.c_str());
		Vertex *t1;
		t1 = new Vertex;
		t1->v = j;
		t1->cost = temp;
		t1->next = graph[i];
		Vertex *t2;
		t2 = new Vertex;
		t2->v = i;
		t2->cost = temp;
		t2->next = graph[j];

		graph[i] = t1;
		graph[j] = t2;

	}

	fin.close();

	prims(graph, v, e);

}

void user_mode_fheap(const char* file) {
	string line;
	int v, e;
	ifstream fin;
	fin.open(file, ios::in);
	getline(fin, line, ' ');
	v = atoi(line.c_str());
	getline(fin, line);
	e = atoi(line.c_str());
	int i, j;
	Vertex **graph = new Vertex*[v];
	for (i = 0; i < v; i++) {
		graph[i] = NULL;
	}

	int temp;
	while (!fin.eof()) {

		getline(fin, line, ' ');
		i = atoi(line.c_str());
		getline(fin, line, ' ');
		j = atoi(line.c_str());
		getline(fin, line);
		temp = atoi(line.c_str());
		Vertex *t1;
		t1 = new Vertex;
		t1->v = j;
		t1->cost = temp;
		t1->next = graph[i];
		Vertex *t2;
		t2 = new Vertex;
		t2->v = i;
		t2->cost = temp;
		t2->next = graph[j];

		graph[i] = t1;
		graph[j] = t2;

	}

	fin.close();

	prims_fheap(graph, v, e);

}

void prims(Vertex** graph, int v, int e) {
	int i;
	int *parent;
	int* key;
	int cost = 0;

	parent = new int[v];
	key = new int[v];
	bool *v_count;
	v_count = new bool[v];

	for (i = 0; i < v; i++) {
		v_count[i] = false;
		key[i] = 2147483647;
	}

	parent[0] = -1;
	key[0] = 0;

	for (i = 0; i < v; i++) {
		int u;
		int j;
		int min = 2147483647;
		for (j = 0; j < v; j++) {
			if (v_count[j] == false && key[j] < min) {
				u = j;
				min = key[j];
			}
		}
		cost = cost + min;
		v_count[u] = true;

		Vertex *temp = graph[u];
		while (temp != NULL) {
			if (v_count[temp->v] == false && temp->cost < key[temp->v]) {
				key[temp->v] = temp->cost;
				parent[temp->v] = u;

			}
			temp = temp->next;
		}
	}

	cout << cost << endl;
	for (i = 1; i < v; i++)
		cout << parent[i] << " " << i << "\n";
}

void prims_fheap(Vertex** graph, int v, int e) {
	int i;
	int *parent;
	int cost = 0;
	int x;
	parent = new int[v];
	bool *v_count;
	v_count = new bool[v];

	FibonacciHeap f;

	f.insert(0, 0);
	for (i = 1; i < v; i++) {
		v_count[i] = false;
		f.insert(i, 2000);
	}

	parent[0] = -1;
	fnode* temp_fnode;

	for (i = 0; i < v; i++) {

		int u;
		temp_fnode = f.removeMin();

		if (temp_fnode == NULL)
			break;
		cost = cost + temp_fnode->cost;
		v_count[temp_fnode->v] = true;

		u = temp_fnode->v;
		Vertex *temp = graph[u];
		while (temp != NULL && f.min != NULL) {

			if (v_count[temp->v] == false) {

				f.decreaseKey(temp->v, temp->cost);

				parent[temp->v] = u;

			}

			if (temp->cost == temp_fnode->cost && v_count[temp->v] == true)
				parent[temp->v] = u;

			temp = temp->next;
		}
	}

	cout << cost << endl;
	for (i = 1; i < v; i++)
		cout << parent[i] << " " << i << "\n";
}
