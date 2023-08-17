.class public final enum Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

.field public static final enum EMAIL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

.field public static final enum ENTITY:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

.field public static final enum NUMBER:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

.field public static final enum PHONE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

.field public static final enum TEXT_PLAIN:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

.field public static final enum TEXT_SYMBOL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

.field public static final enum URL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const-string v1, "TEXT_PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->TEXT_PLAIN:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const-string v3, "TEXT_SYMBOL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->TEXT_SYMBOL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    new-instance v3, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const-string v5, "NUMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->NUMBER:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    new-instance v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const-string v7, "ENTITY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->ENTITY:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    new-instance v7, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const-string v9, "EMAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->EMAIL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    new-instance v9, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const-string v11, "URL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->URL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    new-instance v11, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const-string v13, "PHONE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->PHONE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

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

.method public static getValues()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->$VALUES:[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

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
    const-string/jumbo v0, "url"

    return-object v0

    :pswitch_2
    const-string v0, "email"

    return-object v0

    :pswitch_3
    const-string v0, "entity"

    return-object v0

    :pswitch_4
    const-string v0, "number"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "text_symbol"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "text"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
