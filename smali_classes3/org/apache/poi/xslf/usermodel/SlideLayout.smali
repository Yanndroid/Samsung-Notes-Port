.class public final enum Lorg/apache/poi/xslf/usermodel/SlideLayout;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xslf/usermodel/SlideLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum BLANK:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum CHART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum CHART_AND_TEXT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum CLIP_ART_AND_TEXT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum CLIP_ART_AND_VERT_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum CUST:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum DGM:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum FOUR_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum MEDIA_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum OBJ_AND_TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum OBJ_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum OBJ_ONLY:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum OBJ_OVER_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum OBJ_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum PIC_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum SECTION_HEADER:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TBL:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TEXT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TEXT_AND_CHART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TITLE:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TITLE_AND_CONTENT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TITLE_ONLY:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TWO_COL_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TWO_OBJ_AND_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TWO_OBJ_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TWO_OBJ_OVER_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TWO_TX_TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TX_AND_CLIP_ART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TX_AND_MEDIA:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TX_AND_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TX_AND_TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum TX_OVER_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum VERT_TITLE_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum VERT_TITLE_AND_TX_OVER_CHART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

.field public static final enum VERT_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    new-instance v0, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TITLE:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v1, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TEXT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v3, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v5, "TWO_COL_TX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TWO_COL_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v5, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v7, "TBL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TBL:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v7, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v9, "TEXT_AND_CHART"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TEXT_AND_CHART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v9, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v11, "CHART_AND_TEXT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/xslf/usermodel/SlideLayout;->CHART_AND_TEXT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v11, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v13, "DGM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/xslf/usermodel/SlideLayout;->DGM:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v13, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v15, "CHART"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/xslf/usermodel/SlideLayout;->CHART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v15, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v14, "TX_AND_CLIP_ART"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TX_AND_CLIP_ART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v14, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v12, "CLIP_ART_AND_TEXT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/poi/xslf/usermodel/SlideLayout;->CLIP_ART_AND_TEXT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v12, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v10, "TITLE_ONLY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TITLE_ONLY:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v10, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v8, "BLANK"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/xslf/usermodel/SlideLayout;->BLANK:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v8, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "TX_AND_OBJ"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TX_AND_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v4, "OBJ_AND_TX"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;->OBJ_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v2, "OBJ_ONLY"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->OBJ_ONLY:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "TITLE_AND_CONTENT"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TITLE_AND_CONTENT:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v4, "TX_AND_MEDIA"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TX_AND_MEDIA:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v2, "MEDIA_AND_TX"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->MEDIA_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "OBJ_OVER_TX"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->OBJ_OVER_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v4, "TX_OVER_OBJ"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TX_OVER_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v2, "TX_AND_TWO_OBJ"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TX_AND_TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "TWO_OBJ_AND_TX"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TWO_OBJ_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v4, "TWO_OBJ_OVER_TX"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TWO_OBJ_OVER_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v4, "FOUR_OBJ"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->FOUR_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "VERT_TX"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->VERT_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "CLIP_ART_AND_VERT_TX"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->CLIP_ART_AND_VERT_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "VERT_TITLE_AND_TX"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->VERT_TITLE_AND_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "VERT_TITLE_AND_TX_OVER_CHART"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->VERT_TITLE_AND_TX_OVER_CHART:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "TWO_OBJ"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "OBJ_AND_TWO_OBJ"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->OBJ_AND_TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "TWO_OBJ_AND_OBJ"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TWO_OBJ_AND_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "CUST"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->CUST:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "SECTION_HEADER"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->SECTION_HEADER:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "TWO_TX_TWO_OBJ"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->TWO_TX_TWO_OBJ:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "OBJ_TX"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->OBJ_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    new-instance v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const-string v6, "PIC_TX"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/xslf/usermodel/SlideLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->PIC_TX:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const/16 v4, 0x24

    new-array v4, v4, [Lorg/apache/poi/xslf/usermodel/SlideLayout;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v2, v4, v0

    sput-object v4, Lorg/apache/poi/xslf/usermodel/SlideLayout;->$VALUES:[Lorg/apache/poi/xslf/usermodel/SlideLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/SlideLayout;
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/SlideLayout;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xslf/usermodel/SlideLayout;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/SlideLayout;->$VALUES:[Lorg/apache/poi/xslf/usermodel/SlideLayout;

    invoke-virtual {v0}, [Lorg/apache/poi/xslf/usermodel/SlideLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xslf/usermodel/SlideLayout;

    return-object v0
.end method
