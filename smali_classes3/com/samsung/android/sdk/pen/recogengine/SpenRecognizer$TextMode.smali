.class public final enum Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

.field public static final enum CHARACTER:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

.field public static final enum MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

.field public static final enum OVERLAY:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

.field public static final enum SINGLE_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    const-string v1, "CHARACTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->CHARACTER:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    const-string v3, "SINGLE_LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->SINGLE_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    const-string v5, "MULTI_LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    new-instance v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    const-string v7, "OVERLAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->OVERLAY:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

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

.method public static getValues()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextMode:[I

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

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

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
