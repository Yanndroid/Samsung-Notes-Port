.class public final enum Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/MOCRConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MOCRStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRModelCharsetError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRModelConfigureError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRModelExecutionError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRModelPropertiesError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRModelReadError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRNoResultText:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRNoTextDetection:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRUnknownError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

.field public static final enum MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v1, "MOCRSuccess"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v3, "MOCRModelReadError"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelReadError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v5, "MOCRModelPropertiesError"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelPropertiesError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v5, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v7, "MOCRModelCharsetError"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelCharsetError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v7, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v9, "MOCRModelNotInitError"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v9, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v11, "MOCRModelConfigureError"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelConfigureError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v11, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v13, "MOCRModelExecutionError"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v6}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelExecutionError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v13, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v15, "MOCRUnsupportedFormat"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v8}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v15, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v14, "MOCRNoResultText"

    const/16 v12, 0x8

    const/16 v10, 0xb

    invoke-direct {v15, v14, v12, v10}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRNoResultText:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v14, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v12, "MOCRNoTextDetection"

    const/16 v8, 0x9

    const/16 v6, 0xc

    invoke-direct {v14, v12, v8, v6}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRNoTextDetection:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-instance v6, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    const-string v12, "MOCRUnknownError"

    const/16 v8, 0xa

    const/4 v4, -0x1

    invoke-direct {v6, v12, v8, v4}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnknownError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    new-array v4, v10, [Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    aput-object v0, v4, v2

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

    aput-object v6, v4, v8

    sput-object v4, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->$VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

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

    iput p3, p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;
    .locals 1

    const-class v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;
    .locals 1

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->$VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->value:I

    return v0
.end method
