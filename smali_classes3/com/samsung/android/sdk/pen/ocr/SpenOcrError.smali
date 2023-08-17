.class public final enum Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

.field public static final enum OE_BlockAnalyzerNotLoaded:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

.field public static final enum OE_DBNotLoaded:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

.field public static final enum OE_DetectError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

.field public static final enum OE_RecogError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

.field public static final enum OE_Success:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

.field public static final enum OE_UknownOrientation:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

.field public static final enum OE_UnknownImageFormat:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const-string v1, "OE_Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_Success:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    new-instance v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const-string v3, "OE_BlockAnalyzerNotLoaded"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_BlockAnalyzerNotLoaded:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    new-instance v3, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const-string v5, "OE_DBNotLoaded"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_DBNotLoaded:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    new-instance v5, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const-string v7, "OE_UnknownImageFormat"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_UnknownImageFormat:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    new-instance v7, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const-string v9, "OE_UknownOrientation"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_UknownOrientation:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    new-instance v9, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const-string v11, "OE_RecogError"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_RecogError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    new-instance v11, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const-string v13, "OE_DetectError"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->OE_DetectError:Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->$VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

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

    iput p3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->$VALUES:[Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrError;->value:I

    return v0
.end method
