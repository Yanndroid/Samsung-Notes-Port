.class public final Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field public static final INT_BLANK:I = 0xc

.field public static final INT_CHART:I = 0x8

.field public static final INT_CHART_AND_TX:I = 0x6

.field public static final INT_CLIP_ART_AND_TX:I = 0xa

.field public static final INT_CLIP_ART_AND_VERT_TX:I = 0x1a

.field public static final INT_CUST:I = 0x20

.field public static final INT_DGM:I = 0x7

.field public static final INT_FOUR_OBJ:I = 0x18

.field public static final INT_MEDIA_AND_TX:I = 0x12

.field public static final INT_OBJ:I = 0x10

.field public static final INT_OBJ_AND_TWO_OBJ:I = 0x1e

.field public static final INT_OBJ_AND_TX:I = 0xe

.field public static final INT_OBJ_ONLY:I = 0xf

.field public static final INT_OBJ_OVER_TX:I = 0x13

.field public static final INT_OBJ_TX:I = 0x23

.field public static final INT_PIC_TX:I = 0x24

.field public static final INT_SEC_HEAD:I = 0x21

.field public static final INT_TBL:I = 0x4

.field public static final INT_TITLE:I = 0x1

.field public static final INT_TITLE_ONLY:I = 0xb

.field public static final INT_TWO_COL_TX:I = 0x3

.field public static final INT_TWO_OBJ:I = 0x1d

.field public static final INT_TWO_OBJ_AND_OBJ:I = 0x1f

.field public static final INT_TWO_OBJ_AND_TX:I = 0x16

.field public static final INT_TWO_OBJ_OVER_TX:I = 0x17

.field public static final INT_TWO_TX_TWO_OBJ:I = 0x22

.field public static final INT_TX:I = 0x2

.field public static final INT_TX_AND_CHART:I = 0x5

.field public static final INT_TX_AND_CLIP_ART:I = 0x9

.field public static final INT_TX_AND_MEDIA:I = 0x11

.field public static final INT_TX_AND_OBJ:I = 0xd

.field public static final INT_TX_AND_TWO_OBJ:I = 0x15

.field public static final INT_TX_OVER_OBJ:I = 0x14

.field public static final INT_VERT_TITLE_AND_TX:I = 0x1b

.field public static final INT_VERT_TITLE_AND_TX_OVER_CHART:I = 0x1c

.field public static final INT_VERT_TX:I = 0x19

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    const/16 v1, 0x24

    new-array v2, v1, [Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "title"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "tx"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "twoColTx"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "tbl"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "txAndChart"

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "chartAndTx"

    const/4 v6, 0x6

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "dgm"

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "chart"

    const/16 v6, 0x8

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "txAndClipArt"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "clipArtAndTx"

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "titleOnly"

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "blank"

    const/16 v6, 0xc

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "txAndObj"

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "objAndTx"

    const/16 v6, 0xe

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "objOnly"

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "obj"

    const/16 v6, 0x10

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "txAndMedia"

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "mediaAndTx"

    const/16 v6, 0x12

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "objOverTx"

    const/16 v5, 0x13

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "txOverObj"

    const/16 v6, 0x14

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "txAndTwoObj"

    const/16 v5, 0x15

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "twoObjAndTx"

    const/16 v6, 0x16

    invoke-direct {v3, v4, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "twoObjOverTx"

    const/16 v5, 0x17

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x16

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "fourObj"

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x17

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "vertTx"

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x18

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "clipArtAndVertTx"

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x19

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "vertTitleAndTx"

    const/16 v5, 0x1b

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "vertTitleAndTxOverChart"

    const/16 v5, 0x1c

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "twoObj"

    const/16 v5, 0x1d

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "objAndTwoObj"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "twoObjAndObj"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "cust"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "secHead"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x20

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "twoTxTwoObj"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x21

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "objTx"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x22

    aput-object v3, v2, v4

    new-instance v3, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    const-string v4, "picTx"

    invoke-direct {v3, v4, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x23

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;->forInt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideLayoutType$Enum;

    move-result-object v0

    return-object v0
.end method
