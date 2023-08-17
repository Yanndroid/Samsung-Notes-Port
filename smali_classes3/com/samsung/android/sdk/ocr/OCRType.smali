.class public final enum Lcom/samsung/android/sdk/ocr/OCRType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/ocr/OCRType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ocr/OCRType;

.field public static final enum OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

.field public static final enum OCR_HANDWRITTEN:Lcom/samsung/android/sdk/ocr/OCRType;

.field public static final enum OCR_PRINTED:Lcom/samsung/android/sdk/ocr/OCRType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRType;

    const-string v1, "OCR_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/ocr/OCRType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    new-instance v1, Lcom/samsung/android/sdk/ocr/OCRType;

    const-string v3, "OCR_PRINTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sdk/ocr/OCRType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_PRINTED:Lcom/samsung/android/sdk/ocr/OCRType;

    new-instance v3, Lcom/samsung/android/sdk/ocr/OCRType;

    const-string v5, "OCR_HANDWRITTEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sdk/ocr/OCRType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_HANDWRITTEN:Lcom/samsung/android/sdk/ocr/OCRType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/ocr/OCRType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/ocr/OCRType;->$VALUES:[Lcom/samsung/android/sdk/ocr/OCRType;

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

    iput p3, p0, Lcom/samsung/android/sdk/ocr/OCRType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ocr/OCRType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/ocr/OCRType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/ocr/OCRType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->$VALUES:[Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ocr/OCRType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ocr/OCRType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ocr/OCRType;->value:I

    return v0
.end method
