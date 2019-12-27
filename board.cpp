#include "board.h"
#include <QDebug>

QString board[8][8];

Board::Board(QObject *parent) : QObject(parent)
{

}
QString Board::getFigure(int k, int l)
{
    board[0][0] = Black_rook;
    board[0][1] = Black_knight;
    board[0][2] = Black_bishop;
    board[0][3] = Black_queen;
    board[0][4] = Black_king;
    board[0][5] = Black_bishop;
    board[0][6] = Black_knight;
    board[0][7] = Black_rook;

    for (int i = 1; i < 2; ++i) {
        for (int j = 0; j < 8; ++j) {
            board[i][j] = Black_pawn;
        }
    }

    for (int i = 2; i < 6; ++i) {
        for (int j = 0; j < 8; ++j) {
            board[i][j] = None_figure;
        }
    }

    for (int i = 6; i < 7; ++i) {
        for (int j = 0; j < 8; ++j) {
            board[i][j] = White_pawn;
        }
    }

    board[7][0] = White_rook;
    board[7][1] = White_knight;
    board[7][2] = White_bishop;
    board[7][3] = White_queen;
    board[7][4] = White_king;
    board[7][5] = White_bishop;
    board[7][6] = White_knight;
    board[7][7] = White_rook;

    return board[k][l];
}
