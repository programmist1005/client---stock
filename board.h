#ifndef BOARD_H
#define BOARD_H

#define Black_bishop QString("qrc:/res/img/black_bishop.png")
#define Black_king QString("qrc:/res/img/black_king.png")
#define Black_knight QString("qrc:/res/img/black_knight.png")
#define Black_pawn QString("qrc:/res/img/black_pawn.png")
#define Black_queen QString("qrc:/res/img/black_queen.png")
#define Black_rook QString("qrc:/res/img/black_rook.png")
#define None_figure QString("")
#define White_bishop QString("qrc:/res/img/white_bishop.png")
#define White_king QString("qrc:/res/img/white_king.png")
#define White_knight QString("qrc:/res/img/white_knight.png")
#define White_pawn QString("qrc:/res/img/white_pawn.png")
#define White_queen QString("qrc:/res/img/white_queen.png")
#define White_rook QString("qrc:/res/img/white_rook.png")

#include <QObject>

class Board : public QObject
{
    Q_OBJECT
public:
    explicit Board(QObject *parent = nullptr);

    Q_INVOKABLE QString getFigure(int k, int l);

};

extern QString board[8][8];

#endif // BOARD_H
