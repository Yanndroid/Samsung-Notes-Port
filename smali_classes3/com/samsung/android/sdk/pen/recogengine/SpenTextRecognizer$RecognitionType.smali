.class public final enum Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

.field public static final enum EMAIL:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

.field public static final enum NUMBER:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

.field public static final enum PHONE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

.field public static final enum TEXT_PLAIN:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

.field public static final enum TEXT_SYMBOL:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

.field public static final enum URL:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    const-string v1, "TEXT_PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->TEXT_PLAIN:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    const-string v3, "TEXT_SYMBOL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->TEXT_SYMBOL:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    const-string v5, "EMAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->EMAIL:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    new-instance v5, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    const-string v7, "URL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->URL:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    new-instance v7, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    const-string v9, "NUMBER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->NUMBER:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    new-instance v9, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    const-string v11, "PHONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->PHONE:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

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

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->convert(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    move-result-object p0

    return-object p0
.end method

.method private static convert(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;
    .locals 6

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->getValues()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->TEXT_PLAIN:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    return-object p0
.end method

.method private static convert(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;)Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;
    .locals 6

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->TEXT_PLAIN:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    return-object p0
.end method

.method private getValue()I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$1;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenTextRecognizer$RecognitionType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x5

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$1;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenTextRecognizer$RecognitionType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "phone"

    return-object v0

    :pswitch_1
    const-string v0, "number"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "url"

    return-object v0

    :pswitch_3
    const-string v0, "email"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "text_symbol"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "text"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
