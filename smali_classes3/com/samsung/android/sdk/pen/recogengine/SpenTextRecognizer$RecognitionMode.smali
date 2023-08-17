.class public final enum Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognitionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

.field public static final enum CHARACTER:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

.field public static final enum MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

.field public static final enum OVERLAY:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

.field public static final enum SINGLE_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    const-string v1, "CHARACTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->CHARACTER:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    const-string v3, "SINGLE_LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->SINGLE_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    const-string v5, "MULTI_LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    new-instance v5, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    const-string v7, "OVERLAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->OVERLAY:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

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

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->convert(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    move-result-object p0

    return-object p0
.end method

.method private static convert(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;
    .locals 6

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->getValues()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    return-object p0
.end method

.method private static convert(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;)Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;
    .locals 6

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    return-object p0
.end method

.method private getValue()I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$1;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenTextRecognizer$RecognitionMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$1;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenTextRecognizer$RecognitionMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "overlaid"

    return-object v0

    :cond_1
    const-string v0, "mline"

    return-object v0

    :cond_2
    const-string/jumbo v0, "sline"

    return-object v0

    :cond_3
    const-string v0, "char"

    return-object v0
.end method
