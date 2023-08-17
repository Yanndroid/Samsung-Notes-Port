.class public final enum Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollAlignmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_LEFT_BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_LEFT_MID:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_LEFT_TOP:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_MID:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_MID_BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_MID_TOP:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_OPTIMAL:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_RIGHT_BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_RIGHT_MID:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

.field public static final enum ALIGNMENT_MODE_RIGHT_TOP:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;


# instance fields
.field private final toInt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v1, "ALIGNMENT_MODE_OPTIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_OPTIMAL:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v3, "ALIGNMENT_MODE_LEFT_TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_LEFT_TOP:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v5, "ALIGNMENT_MODE_LEFT_MID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_LEFT_MID:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v5, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v7, "ALIGNMENT_MODE_LEFT_BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_LEFT_BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v7, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v9, "ALIGNMENT_MODE_MID_TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_MID_TOP:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v9, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v11, "ALIGNMENT_MODE_MID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_MID:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v11, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v13, "ALIGNMENT_MODE_MID_BOTTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_MID_BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v13, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v15, "ALIGNMENT_MODE_RIGHT_TOP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_RIGHT_TOP:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v15, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v14, "ALIGNMENT_MODE_RIGHT_MID"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_RIGHT_MID:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    new-instance v14, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const-string v12, "ALIGNMENT_MODE_RIGHT_BOTTOM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->ALIGNMENT_MODE_RIGHT_BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->toInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->$VALUES:[Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/engine/SpenViewCore$ScrollAlignmentMode;

    return-object v0
.end method
