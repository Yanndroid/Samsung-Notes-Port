.class final enum Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegexActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

.field public static final enum REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

.field public static final enum REPLACE_COMMA_MULTIPLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

.field public static final enum REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    const-string v1, "REPLACE_COMMA_MULTIPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_COMMA_MULTIPLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    new-instance v1, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    const-string v3, "REPLACE_COMMA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    new-instance v3, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    const-string v5, "REPLACE_DOUBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->$VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;
    .locals 1

    const-class v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;
    .locals 1

    sget-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->$VALUES:[Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    invoke-virtual {v0}, [Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ocr/stride/postocr/entity/URLCorrection$RegexActions;

    return-object v0
.end method
