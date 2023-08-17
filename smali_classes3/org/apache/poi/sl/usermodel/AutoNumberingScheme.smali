.class public final enum Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field private static final ALPHA_LIST:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field private static final ARABIC_LIST:Ljava/lang/String; = "0123456789"

.field private static final CIRCLE_DB_LIST:Ljava/lang/String; = "\u2776\u2777\u2778\u2779\u277a\u277b\u277c\u277d\u277e"

.field private static final WINGDINGS_BLACK_LIST:Ljava/lang/String; = "\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094"

.field private static final WINGDINGS_WHITE_LIST:Ljava/lang/String; = "\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089"

.field public static final enum alphaLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum alphaUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabic1Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabic2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum arabicPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumWdBlackPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum circleNumWdWhitePlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChsPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChsPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChtPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1ChtPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnChsDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnKorPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum ea1JpnKorPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hebrew2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiAlpha1Period:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum hindiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum romanUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

.field public static final enum thaiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 45

    new-instance v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v1, "alphaLcParenBoth"

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v2, "alphaUcParenBoth"

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct {v1, v2, v4, v5, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v7, "alphaLcParenRight"

    const/16 v8, 0x9

    const/4 v9, 0x3

    invoke-direct {v2, v7, v6, v8, v9}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v10, "alphaUcParenRight"

    const/16 v11, 0xb

    const/4 v12, 0x4

    invoke-direct {v7, v10, v9, v11, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v10, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v13, "alphaLcPeriod"

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-direct {v10, v13, v12, v14, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v14, "alphaUcPeriod"

    const/4 v11, 0x6

    invoke-direct {v13, v14, v15, v4, v11}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->alphaUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v14, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v4, "arabicParenBoth"

    const/16 v15, 0xc

    const/4 v12, 0x7

    invoke-direct {v14, v4, v11, v15, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v4, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v11, "arabicParenRight"

    invoke-direct {v4, v11, v12, v6, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v11, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v6, "arabicPeriod"

    invoke-direct {v11, v6, v3, v9, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v3, "arabicPlain"

    const/16 v9, 0xd

    invoke-direct {v6, v3, v8, v9, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v8, "romanLcParenBoth"

    const/16 v9, 0xb

    const/4 v12, 0x4

    invoke-direct {v3, v8, v5, v12, v9}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "romanUcParenBoth"

    const/16 v5, 0xe

    invoke-direct {v8, v12, v9, v5, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "romanLcParenRight"

    move-object/from16 v16, v8

    const/16 v5, 0xd

    const/4 v8, 0x5

    invoke-direct {v9, v12, v15, v8, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "romanUcParenRight"

    const/16 v15, 0xf

    move-object/from16 v17, v9

    const/16 v9, 0xe

    invoke-direct {v8, v12, v5, v15, v9}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "romanLcPeriod"

    move-object/from16 v18, v8

    const/4 v8, 0x6

    invoke-direct {v5, v12, v9, v8, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanLcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "romanUcPeriod"

    const/16 v12, 0x10

    move-object/from16 v19, v5

    const/4 v5, 0x7

    invoke-direct {v8, v9, v15, v5, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->romanUcPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "circleNumDbPlain"

    const/16 v15, 0x12

    move-object/from16 v20, v8

    const/16 v8, 0x11

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "circleNumWdBlackPlain"

    move-object/from16 v21, v5

    const/16 v5, 0x14

    invoke-direct {v9, v12, v8, v5, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumWdBlackPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v8, "circleNumWdWhitePlain"

    const/16 v5, 0x13

    invoke-direct {v12, v8, v15, v5, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->circleNumWdWhitePlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v15, "arabicDbPeriod"

    move-object/from16 v22, v12

    const/16 v12, 0x1d

    move-object/from16 v23, v9

    const/16 v9, 0x14

    invoke-direct {v8, v15, v5, v12, v9}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v15, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v5, "arabicDbPlain"

    const/16 v12, 0x1c

    move-object/from16 v24, v8

    const/16 v8, 0x15

    invoke-direct {v15, v5, v9, v12, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabicDbPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v8, "ea1ChsPeriod"

    const/16 v9, 0x15

    const/16 v12, 0x16

    move-object/from16 v25, v15

    const/16 v15, 0x11

    invoke-direct {v5, v8, v9, v15, v12}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChsPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "ea1ChsPlain"

    const/16 v15, 0x17

    move-object/from16 v26, v5

    const/16 v5, 0x10

    invoke-direct {v8, v9, v12, v5, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChsPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "ea1ChtPeriod"

    const/16 v12, 0x17

    const/16 v15, 0x15

    move-object/from16 v27, v8

    const/16 v8, 0x18

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChtPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "ea1ChtPlain"

    const/16 v12, 0x18

    const/16 v15, 0x19

    move-object/from16 v28, v5

    const/16 v5, 0x14

    invoke-direct {v8, v9, v12, v5, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1ChtPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "ea1JpnChsDbPeriod"

    const/16 v12, 0x19

    const/16 v15, 0x26

    move-object/from16 v29, v8

    const/16 v8, 0x1a

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnChsDbPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "ea1JpnKorPlain"

    const/16 v12, 0x1a

    const/16 v15, 0x1a

    move-object/from16 v30, v5

    const/16 v5, 0x1b

    invoke-direct {v8, v9, v12, v15, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnKorPlain:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "ea1JpnKorPeriod"

    const/16 v12, 0x1b

    const/16 v15, 0x1b

    move-object/from16 v31, v8

    const/16 v8, 0x1c

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ea1JpnKorPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "arabic1Minus"

    const/16 v12, 0x1c

    const/16 v15, 0x17

    move-object/from16 v32, v5

    const/16 v5, 0x1d

    invoke-direct {v8, v9, v12, v15, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabic1Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "arabic2Minus"

    const/16 v15, 0x18

    move-object/from16 v33, v8

    const/16 v8, 0x1e

    invoke-direct {v9, v12, v5, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->arabic2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v8, "hebrew2Minus"

    const/16 v12, 0x1e

    const/16 v15, 0x19

    move-object/from16 v34, v9

    const/16 v9, 0x1f

    invoke-direct {v5, v8, v12, v15, v9}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hebrew2Minus:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string/jumbo v9, "thaiAlphaPeriod"

    const/16 v12, 0x1f

    const/16 v15, 0x1e

    move-object/from16 v35, v5

    const/16 v5, 0x20

    invoke-direct {v8, v9, v12, v15, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string/jumbo v9, "thaiAlphaParenRight"

    const/16 v12, 0x20

    const/16 v15, 0x1f

    move-object/from16 v36, v8

    const/16 v8, 0x21

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string/jumbo v9, "thaiAlphaParenBoth"

    const/16 v12, 0x21

    const/16 v15, 0x20

    move-object/from16 v37, v5

    const/16 v5, 0x22

    invoke-direct {v8, v9, v12, v15, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiAlphaParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string/jumbo v9, "thaiNumPeriod"

    const/16 v12, 0x22

    const/16 v15, 0x21

    move-object/from16 v38, v8

    const/16 v8, 0x23

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string/jumbo v9, "thaiNumParenRight"

    const/16 v12, 0x23

    const/16 v15, 0x22

    move-object/from16 v39, v5

    const/16 v5, 0x24

    invoke-direct {v8, v9, v12, v15, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string/jumbo v9, "thaiNumParenBoth"

    const/16 v12, 0x24

    const/16 v15, 0x23

    move-object/from16 v40, v8

    const/16 v8, 0x25

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->thaiNumParenBoth:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "hindiAlphaPeriod"

    const/16 v12, 0x25

    const/16 v15, 0x24

    move-object/from16 v41, v5

    const/16 v5, 0x26

    invoke-direct {v8, v9, v12, v15, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiAlphaPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v9, "hindiNumPeriod"

    const/16 v12, 0x26

    const/16 v15, 0x25

    move-object/from16 v42, v8

    const/16 v8, 0x27

    invoke-direct {v5, v9, v12, v15, v8}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiNumPeriod:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v12, "hindiNumParenRight"

    const/16 v15, 0x28

    invoke-direct {v9, v12, v8, v8, v15}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiNumParenRight:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-instance v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const-string v15, "hindiAlpha1Period"

    move-object/from16 v43, v9

    const/16 v9, 0x28

    move-object/from16 v44, v5

    const/16 v5, 0x29

    invoke-direct {v12, v15, v9, v8, v5}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->hindiAlpha1Period:Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    new-array v5, v5, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    const/4 v9, 0x0

    aput-object v0, v5, v9

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v10, v5, v0

    const/4 v0, 0x5

    aput-object v13, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v4, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v6, v5, v0

    const/16 v0, 0xa

    aput-object v3, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v21, v5, v0

    const/16 v0, 0x11

    aput-object v23, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v24, v5, v0

    const/16 v0, 0x14

    aput-object v25, v5, v0

    const/16 v0, 0x15

    aput-object v26, v5, v0

    const/16 v0, 0x16

    aput-object v27, v5, v0

    const/16 v0, 0x17

    aput-object v28, v5, v0

    const/16 v0, 0x18

    aput-object v29, v5, v0

    const/16 v0, 0x19

    aput-object v30, v5, v0

    const/16 v0, 0x1a

    aput-object v31, v5, v0

    const/16 v0, 0x1b

    aput-object v32, v5, v0

    const/16 v0, 0x1c

    aput-object v33, v5, v0

    const/16 v0, 0x1d

    aput-object v34, v5, v0

    const/16 v0, 0x1e

    aput-object v35, v5, v0

    const/16 v0, 0x1f

    aput-object v36, v5, v0

    const/16 v0, 0x20

    aput-object v37, v5, v0

    const/16 v0, 0x21

    aput-object v38, v5, v0

    const/16 v0, 0x22

    aput-object v39, v5, v0

    const/16 v0, 0x23

    aput-object v40, v5, v0

    const/16 v0, 0x24

    aput-object v41, v5, v0

    const/16 v0, 0x25

    aput-object v42, v5, v0

    const/16 v0, 0x26

    aput-object v44, v5, v0

    aput-object v43, v5, v8

    const/16 v0, 0x28

    aput-object v12, v5, v0

    sput-object v5, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->$VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    return-void
.end method

.method private static addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V
    .locals 2

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p0, v0, :cond_1

    div-int v1, p0, v0

    invoke-static {v1, p1, p2, p3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V

    :cond_1
    rem-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static forNativeID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forOoxmlID(I)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private formatCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo v2, "uc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private formatIndex(I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "roman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatRomanIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "arabic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "0123456789"

    invoke-static {p1, v0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {p1, v0, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "WdWhite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0xa

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_3

    const-string/jumbo p1, "\u008a"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089"

    invoke-static {p1, v0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    const-string v1, "WdBlack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne p1, v4, :cond_5

    const-string/jumbo p1, "\u0095"

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094"

    invoke-static {p1, v0, v2}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_6
    const-string v1, "NumDb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p1, v4, :cond_7

    const-string/jumbo p1, "\u277f"

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "\u2776\u2777\u2778\u2779\u277a\u277b\u277c\u277d\u277e"

    invoke-static {p1, v0, v3}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_8
    const-string p1, "?"

    return-object p1
.end method

.method private formatRomanIndex(I)Ljava/lang/String;
    .locals 15

    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-string v2, "M"

    const-string v3, "CM"

    const-string v4, "D"

    const-string v5, "CD"

    const-string v6, "C"

    const-string v7, "XC"

    const-string v8, "L"

    const-string v9, "XL"

    const-string v10, "X"

    const-string v11, "IX"

    const-string v12, "V"

    const-string v13, "IV"

    const-string v14, "I"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    new-array v4, v3, [[Ljava/lang/String;

    const-string v5, "XLV"

    const-string v6, "VL"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "XCV"

    const-string v7, "VC"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "CDL"

    const-string v8, "LD"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "CML"

    const-string v8, "LM"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-string v5, "CMVC"

    const-string v8, "LMVL"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v4, v9

    const-string v5, "CDXC"

    const-string v9, "LDXL"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v4, v10

    const-string v9, "CDVC"

    const-string v10, "LDVL"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v4, v11

    const-string v10, "CMXC"

    const-string v11, "LMXL"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v4, v12

    const-string v11, "XCIX"

    const-string v12, "VCIV"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v4, v13

    const-string v12, "XLIX"

    const-string v13, "VLIV"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v4, v14

    const-string v13, "IL"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v4, v13

    const-string v12, "IC"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v4, v12

    const-string v11, "XD"

    filled-new-array {v5, v11}, [Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0xc

    aput-object v5, v4, v11

    const-string v5, "XDV"

    filled-new-array {v9, v5}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v0

    const-string v9, "CDIC"

    const-string v11, "XDIX"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0xe

    aput-object v9, v4, v12

    const-string v9, "XMV"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0xf

    aput-object v8, v4, v12

    const-string v8, "CMIC"

    const-string v12, "XMIX"

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v4, v13

    const-string v8, "XM"

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x11

    aput-object v8, v4, v10

    const-string v8, "VD"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x12

    aput-object v5, v4, v8

    const-string v5, "VDIV"

    filled-new-array {v11, v5}, [Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x13

    aput-object v8, v4, v10

    const-string v8, "VM"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x14

    aput-object v8, v4, v9

    const-string v8, "VMIV"

    filled-new-array {v12, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x15

    aput-object v9, v4, v10

    const-string v9, "ID"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x16

    aput-object v5, v4, v9

    const-string v5, "IM"

    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x17

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v8, p1

    move v9, v6

    :goto_0
    if-ge v9, v0, :cond_1

    :goto_1
    aget v10, v1, v9

    if-lt v8, v10, :cond_0

    aget v10, v1, v9

    sub-int/2addr v8, v10

    aget-object v10, v2, v9

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v6

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v4, v1

    aget-object v5, v2, v6

    aget-object v2, v2, v7

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v0

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method private formatSeperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "parenright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "parenboth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "period"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, "minus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method private static getIndexedList(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->addIndexedChar(ILjava/lang/String;ZLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->$VALUES:[Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    return-object v0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatIndex(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->formatSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme$1;->$SwitchMap$org$apache$poi$sl$usermodel$AutoNumberingScheme:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Hindi alphabetic character followed by a period."

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown Numbered Scheme"

    return-object v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const-string v0, "Hindi numeric character followed by a closing parenthesis."

    return-object v0

    :pswitch_2
    const-string v0, "Japanese with double-byte period."

    return-object v0

    :pswitch_3
    const-string v0, "Hindi numeric character followed by a period."

    return-object v0

    :pswitch_4
    return-object v1

    :pswitch_5
    const-string v0, "Thai numeral enclosed in parentheses."

    return-object v0

    :pswitch_6
    const-string v0, "Thai numeral followed by a closing parenthesis."

    return-object v0

    :pswitch_7
    const-string v0, "Thai numeral followed by a period."

    return-object v0

    :pswitch_8
    const-string v0, "Thai alphabetic character enclosed by parentheses."

    return-object v0

    :pswitch_9
    const-string v0, "Thai alphabetic character followed by a closing parenthesis."

    return-object v0

    :pswitch_a
    const-string v0, "Thai alphabetic character followed by a period."

    return-object v0

    :pswitch_b
    const-string v0, "Double-byte Arabic numbers with double-byte period."

    return-object v0

    :pswitch_c
    const-string v0, "Double-byte Arabic numbers."

    return-object v0

    :pswitch_d
    const-string v0, "Japanese/Korean with single-byte period."

    return-object v0

    :pswitch_e
    const-string v0, "Japanese/Korean."

    return-object v0

    :pswitch_f
    const-string v0, "Bidi Hebrew 2 with ANSI minus symbol."

    return-object v0

    :pswitch_10
    const-string v0, "Bidi Arabic 2 (AraAbjad) with ANSI minus symbol."

    return-object v0

    :pswitch_11
    const-string v0, "Bidi Arabic 1 (AraAlpha) with ANSI minus symbol."

    return-object v0

    :pswitch_12
    const-string v0, "Traditional Chinese with single-byte period."

    return-object v0

    :pswitch_13
    const-string v0, "Traditional Chinese."

    return-object v0

    :pswitch_14
    const-string v0, "Wingdings black circle numbers."

    return-object v0

    :pswitch_15
    const-string v0, "Wingdings white circle numbers."

    return-object v0

    :pswitch_16
    const-string v0, "Double byte circle numbers."

    return-object v0

    :pswitch_17
    const-string v0, "Simplified Chinese with single-byte period."

    return-object v0

    :pswitch_18
    const-string v0, "Simplified Chinese."

    return-object v0

    :pswitch_19
    const-string v0, "Uppercase Roman numeral followed by a closing parenthesis. Example: I), II), III), ..."

    return-object v0

    :pswitch_1a
    const-string v0, "Uppercase Roman numeral enclosed in parentheses. Example: (I), (II), (III), ..."

    return-object v0

    :pswitch_1b
    const-string v0, "Arabic numeral. Example: 1, 2, 3, ..."

    return-object v0

    :pswitch_1c
    const-string v0, "Arabic numeral enclosed in parentheses. Example: (1), (2), (3), ..."

    return-object v0

    :pswitch_1d
    const-string v0, "Uppercase alphabetic character followed by a closing parenthesis. Example: A), B), C), ..."

    return-object v0

    :pswitch_1e
    const-string v0, "Uppercase alphabetic character enclosed in parentheses. Example: (A), (B), (C), ..."

    return-object v0

    :pswitch_1f
    const-string v0, "Lowercase alphabetic character followed by a closing parenthesis. Example: a), b), c), ..."

    return-object v0

    :pswitch_20
    const-string v0, "Lowercase alphabetic character enclosed in parentheses. Example: (a), (b), (c), ..."

    return-object v0

    :pswitch_21
    const-string v0, "Uppercase Roman numeral followed by a period. Example: I., II., III., ..."

    return-object v0

    :pswitch_22
    const-string v0, "Lowercase Roman numeral followed by a period. Example: i., ii., iii., ..."

    return-object v0

    :pswitch_23
    const-string v0, "Lowercase Roman numeral followed by a closing parenthesis. Example: i), ii), iii), ..."

    return-object v0

    :pswitch_24
    const-string v0, "Lowercase Roman numeral enclosed in parentheses. Example: (i), (ii), (iii), ..."

    return-object v0

    :pswitch_25
    const-string v0, "Arabic numeral followed by a period. Example: 1., 2., 3., ..."

    return-object v0

    :pswitch_26
    const-string v0, "Arabic numeral followed by a closing parenthesis. Example: 1), 2), 3), ..."

    return-object v0

    :pswitch_27
    const-string v0, "Uppercase Latin character followed by a period. Example: A., B., C., ..."

    return-object v0

    :pswitch_28
    const-string v0, "Lowercase Latin character followed by a period. Example: a., b., c., ..."

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
