.class final enum Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegexActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

.field public static final enum REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

.field public static final enum REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    const-string v1, "REPLACE_COMMA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    new-instance v1, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    const-string v3, "REPLACE_DOUBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->$VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;
    .locals 1

    const-class v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;
    .locals 1

    sget-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->$VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    invoke-virtual {v0}, [Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    return-object v0
.end method
