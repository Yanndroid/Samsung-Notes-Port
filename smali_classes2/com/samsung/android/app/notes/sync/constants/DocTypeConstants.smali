.class public final enum Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum ETC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum MEMO_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum MEMO_LOCAL:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum NONE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SDOC_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SNOTE_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SNOTE_LOCAL:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SNOTE_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SS_LMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SS_NMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SS_QMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SS_SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum SS_TMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

.field public static final enum TMEMO1:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->NONE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v3, "MEMO_SCLOUD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v5, "MEMO_LOCAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_LOCAL:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v5, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v7, "MEMO_GOOGLEDRIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v7, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v9, "SNOTE_SCLOUD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v9, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v11, "SNOTE_LOCAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_LOCAL:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v11, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v13, "SNOTE_GOOGLEDRIVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v13, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v15, "SDOC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v15, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v14, "SDOCX"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOCX:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v14, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v12, "SDOC_SCLOUD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOC_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v12, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v10, "TMEMO1"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->TMEMO1:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v10, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v8, "SCRAPBOOK_SCLOUD"

    const/16 v6, 0xb

    const-string v4, "SCRAPBOOK_SCLOUD"

    invoke-direct {v10, v8, v6, v4}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v6, "SS_SDOC"

    const/16 v8, 0xc

    const-string v2, "SS_SDOC"

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v6, "SS_NMEMO"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "SS_NMEMO"

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_NMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v6, "SS_LMEMO"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "SS_LMEMO"

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_LMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v6, "SS_QMEMO"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "SS_QMEMO"

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_QMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v6, "SS_TMEMO"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "SS_TMEMO"

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_TMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v6, "ETC"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "ETC"

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->ETC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/16 v4, 0x12

    new-array v4, v4, [Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

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

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v2, v4, v0

    sput-object v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->$VALUES:[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->$VALUES:[Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v0}, [Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->mType:Ljava/lang/String;

    return-object v0
.end method
