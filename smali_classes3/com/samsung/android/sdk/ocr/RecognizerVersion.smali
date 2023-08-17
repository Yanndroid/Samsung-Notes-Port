.class public final enum Lcom/samsung/android/sdk/ocr/RecognizerVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/ocr/RecognizerVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ocr/RecognizerVersion;

.field public static final enum RECOGNIZER_FOR_DATA_PROVIDER_SERVICE:Lcom/samsung/android/sdk/ocr/RecognizerVersion;

.field public static final enum RECOGNIZER_FOR_FW_LATEST:Lcom/samsung/android/sdk/ocr/RecognizerVersion;

.field public static final enum RECOGNIZER_FOR_FW_ONEUI41:Lcom/samsung/android/sdk/ocr/RecognizerVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    const-string v1, "RECOGNIZER_FOR_FW_ONEUI41"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ocr/RecognizerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ocr/RecognizerVersion;->RECOGNIZER_FOR_FW_ONEUI41:Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    new-instance v1, Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    const-string v3, "RECOGNIZER_FOR_FW_LATEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ocr/RecognizerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/ocr/RecognizerVersion;->RECOGNIZER_FOR_FW_LATEST:Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    new-instance v3, Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    const-string v5, "RECOGNIZER_FOR_DATA_PROVIDER_SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/ocr/RecognizerVersion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/ocr/RecognizerVersion;->RECOGNIZER_FOR_DATA_PROVIDER_SERVICE:Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/ocr/RecognizerVersion;->$VALUES:[Lcom/samsung/android/sdk/ocr/RecognizerVersion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ocr/RecognizerVersion;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/ocr/RecognizerVersion;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ocr/RecognizerVersion;->$VALUES:[Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ocr/RecognizerVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ocr/RecognizerVersion;

    return-object v0
.end method
