.class public final enum Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PenDashType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum CONTINUOUS_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DASHED_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DASHED_DOUBLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DASHED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DASHED_SPACE_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DASHED_TRIPLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DOUBLE_DASHED_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DOUBLE_DASHED_DOUBLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum DOUBLE_DASHED_TRIPLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum LONG_DASHED_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum LONG_DASHED_DOUBLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum LONG_DASHED_DOULBE_SHORT_DASHED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum LONG_DASHED_SHORT_DASHED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

.field public static final enum LONG_DASHED_TRIPLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v1, "CONTINUOUS_LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->CONTINUOUS_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v3, "DASHED_LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DASHED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v3, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v5, "DASHED_SPACE_LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DASHED_SPACE_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v5, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v7, "LONG_DASHED_DOTTED_LINE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->LONG_DASHED_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v7, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v9, "LONG_DASHED_DOUBLE_DOTTED_LINE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->LONG_DASHED_DOUBLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v9, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v11, "LONG_DASHED_TRIPLE_DOTTED_LINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->LONG_DASHED_TRIPLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v11, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v13, "DOTTED_LINE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v13, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v15, "LONG_DASHED_SHORT_DASHED_LINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->LONG_DASHED_SHORT_DASHED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v15, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v14, "LONG_DASHED_DOULBE_SHORT_DASHED_LINE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->LONG_DASHED_DOULBE_SHORT_DASHED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v14, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v12, "DASHED_DOTTED_LINE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DASHED_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v12, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v10, "DOUBLE_DASHED_DOTTED_LINE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DOUBLE_DASHED_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v10, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v8, "DASHED_DOUBLE_DOTTED_LINE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DASHED_DOUBLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v8, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v6, "DOUBLE_DASHED_DOUBLE_DOTTED_LINE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DOUBLE_DASHED_DOUBLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v6, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v4, "DASHED_TRIPLE_DOTTED_LINE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DASHED_TRIPLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    new-instance v4, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const-string v2, "DOUBLE_DASHED_TRIPLE_DOTTED_LINE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->DOUBLE_DASHED_TRIPLE_DOTTED_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->$VALUES:[Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->$VALUES:[Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    return-object v0
.end method
