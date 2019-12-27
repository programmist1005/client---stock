#ifndef MOVEFIGURE_H
#define MOVEFIGURE_H

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
#include <QVariantList>

class MoveFigure : public QObject
{
    Q_OBJECT
public:
    explicit MoveFigure(QObject *parent = nullptr);
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE int move( QString ds, int dn, int di, int dj, QString ts,int tn, int ti, int tj );
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void typeFigure( QVariantList s );
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void typeFigureHistory( QVariantList s );
    Q_INVOKABLE QString getFigureHistory(int k, int l);
    Q_INVOKABLE void historyWrite();
    Q_INVOKABLE void historyRead();
    Q_INVOKABLE void playerWrite();
    Q_INVOKABLE void playerRead();
    Q_INVOKABLE void playerMove();
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void change();
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void block();
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void castlingWhite( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void castlingBlack( int dn, int di, int dj, int tn, int ti, int tj );
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void moveWhitePawn( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveWhitePawnAttack( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveWhiteKing( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveWhiteKnight( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveWhiteRook( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveWhiteBishop( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveWhiteQueen( int dn, int di, int dj, int tn, int ti, int tj );
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void moveBlackPawn( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveBlackPawnAttack( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveBlackKing( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveBlackKnight( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveBlackRook( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveBlackBishop( int dn, int di, int dj, int tn, int ti, int tj );
    Q_INVOKABLE void moveBlackQueen( int dn, int di, int dj, int tn, int ti, int tj );
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE int take();
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE int replace();
    Q_INVOKABLE void selectFigure( QString qrcNewFigure );
    Q_INVOKABLE QString replacePawn();
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE int checkmate();
    //------------------------------------------------------------------------------------------------------------
    Q_INVOKABLE void game( int plr );
    Q_INVOKABLE int gamePlayer();
    //------------------------------------------------------------------------------------------------------------
    //Q_INVOKABLE void sendPortNumber(int prt);
    //Q_INVOKABLE int portNumber();

};

//------------------------------------------------------------------------------------------------------------
extern int player;
//------------------------------------------------------------------------------------------------------------
//extern int port;
//------------------------------------------------------------------------------------------------------------
extern int check;
//------------------------------------------------------------------------------------------------------------
extern int WhiteKingPos;
extern int BlackKingPos;
//------------------------------------------------------------------------------------------------------------
extern int takePawnSourse;
extern bool takePawn;
//------------------------------------------------------------------------------------------------------------
extern QString lastMoveFigure;
extern int lastDI;
extern int lastDJ;
extern int lastTI;
extern int lastTJ;
extern int lastTN;
//------------------------------------------------------------------------------------------------------------
extern QString newFigure;
extern int replaceFigure;
extern bool newWhite;
extern bool newBlack;
//------------------------------------------------------------------------------------------------------------
extern  int value;
//------------------------------------------------------------------------------------------------------------
extern  int type;
//------------------------------------------------------------------------------------------------------------
extern  QList <QVariant> moveBoard;
extern int gameBoard[8][8];
//------------------------------------------------------------------------------------------------------------
extern  QList <QVariant> moveBoardHistory;
extern QString histotyBoardWrite[64];
extern QString histotyBoardRead[64];
extern QString boardHistory[8][8];
extern QString playerStr[2];
//------------------------------------------------------------------------------------------------------------
extern bool white;
extern bool black;
//------------------------------------------------------------------------------------------------------------
extern  int moveWhite;
extern  int moveBlack;
//------------------------------------------------------------------------------------------------------------
extern  bool moveWhiteKingFirst;
extern  bool moveBlackKingFirst;
//------------------------------------------------------------------------------------------------------------
extern  bool moveWhiteRookQueenFirst;
extern  bool moveWhiteRookKingFirst;
//------------------------------------------------------------------------------------------------------------
extern  bool moveBlackRookQueenFirst;
extern  bool moveBlackRookKingFirst;
//------------------------------------------------------------------------------------------------------------

#endif // MOVEFIGURE_H
