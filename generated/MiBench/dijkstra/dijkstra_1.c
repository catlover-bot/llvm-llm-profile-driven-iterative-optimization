#include <stdio.h>
#include <stdlib.h>

#define NONE 9999

struct _NODE {
    int iDist;
    int iPrev;
};
typedef struct _NODE NODE;

struct _QITEM {
    int iNode;
    int iDist;
    int iPrev;
    struct _QITEM *qNext;
};
typedef struct _QITEM QITEM;

QITEM *qHead = NULL;
int num_nodes;
int **AdjMatrix;
int g_qCount = 0;
NODE *rgnNodes;
int ch;
int iPrev, iNode;
int i, iCost, iDist;

void print_path(NODE *rgnNodes, int chNode) {
    if (rgnNodes[chNode].iPrev != NONE) {
        print_path(rgnNodes, rgnNodes[chNode].iPrev);
    }
    printf(" %d", chNode);
    fflush(stdout);
}

void enqueue(int iNode, int iDist, int iPrev) {
    QITEM **qLast = &qHead;
    while (*qLast) qLast = &(*qLast)->qNext;
    *qLast = (QITEM *)malloc(sizeof(QITEM));
    if (!*qLast) {
        fprintf(stderr, "Out of memory.\n");
        exit(1);
    }
    (*qLast)->iNode = iNode;
    (*qLast)->iDist = iDist;
    (*qLast)->iPrev = iPrev;
    (*qLast)->qNext = NULL;
    g_qCount++;
}

void dequeue(int *piNode, int *piDist, int *piPrev) {
    if (qHead) {
        QITEM *qKill = qHead;
        *piNode = qHead->iNode;
        *piDist = qHead->iDist;
        *piPrev = qHead->iPrev;
        qHead = qHead->qNext;
        free(qKill);
        g_qCount--;
    }
}

int qcount(void) {
    return g_qCount;
}

int dijkstra(int chStart, int chEnd) {
    for (ch = 0; ch < num_nodes; ch++) {
        rgnNodes[ch].iDist = NONE;
        rgnNodes[ch].iPrev = NONE;
    }

    if (chStart == chEnd) {
        printf("Shortest path is 0 in cost. Just stay where you are.\n");
    } else {
        rgnNodes[chStart].iDist = 0;
        rgnNodes[chStart].iPrev = NONE;
        enqueue(chStart, 0, NONE);

        while (qcount() > 0) {
            dequeue(&iNode, &iDist, &iPrev);
            NODE *currentNode = &rgnNodes[iNode];
            int *adjRow = AdjMatrix[iNode];

            for (i = 0; i < num_nodes; i++) {
                if ((iCost = adjRow[i]) != NONE) {
                    NODE *nextNode = &rgnNodes[i];
                    int newDist = iDist + iCost;
                    if (nextNode->iDist == NONE || nextNode->iDist > newDist) {
                        nextNode->iDist = newDist;
                        nextNode->iPrev = iNode;
                        enqueue(i, newDist, iNode);
                    }
                }
            }
        }

        printf("Shortest path is %d in cost. ", rgnNodes[chEnd].iDist);
        printf("Path is: ");
        print_path(rgnNodes, chEnd);
        printf("\n");
    }
}

int main(int argc, char *argv[]) {
    int i, j, k;
    FILE *fp;

    if (argc < 3) {
        fprintf(stderr, "Usage: dijkstra <NUM_NODES> <INPUT_FILE>\n");
        return 1;
    }

    num_nodes = atoi(argv[1]);
    rgnNodes = (NODE *)malloc(num_nodes * sizeof(NODE));
    AdjMatrix = (int **)malloc(num_nodes * sizeof(int *));
    for (i = 0; i < num_nodes; i++) {
        AdjMatrix[i] = (int *)malloc(num_nodes * sizeof(int));
    }

    fp = fopen(argv[2], "r");
    if (!fp) {
        fprintf(stderr, "Error opening file.\n");
        return 1;
    }

    for (i = 0; i < num_nodes; i++) {
        for (j = 0; j < num_nodes; j++) {
            fscanf(fp, "%d", &k);
            AdjMatrix[i][j] = k;
        }
    }
    fclose(fp);

    for (i = 0, j = num_nodes / 2; i < 20; i++, j++) {
        dijkstra(i, j % num_nodes);
    }

    free(rgnNodes);
    for (i = 0; i < num_nodes; i++) {
        free(AdjMatrix[i]);
    }
    free(AdjMatrix);

    return 0;
}