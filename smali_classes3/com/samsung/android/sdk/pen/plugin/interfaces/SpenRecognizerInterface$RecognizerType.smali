.class public final enum Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognizerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum BEAUTIFIER_ALL:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum BEAUTIFIER_LAYOUT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum BEAUTIFIER_LINE_ALIGNMENT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum DEFAULT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum DOCUMENT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum SHAPE:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum SHAPE_EXTRACTOR:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum TEXT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum TEXT_EXTRACTOR:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

.field public static final enum TEXT_MULTILINE:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->DEFAULT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v3, "TEXT_EXTRACTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->TEXT_EXTRACTOR:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v3, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v5, "SHAPE_EXTRACTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->SHAPE_EXTRACTOR:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v5, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v7, "TEXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->TEXT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v7, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v9, "SHAPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->SHAPE:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v9, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v11, "DOCUMENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->DOCUMENT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v11, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v13, "TEXT_MULTILINE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->TEXT_MULTILINE:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v13, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v15, "BEAUTIFIER_LAYOUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->BEAUTIFIER_LAYOUT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v15, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v14, "BEAUTIFIER_LINE_ALIGNMENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->BEAUTIFIER_LINE_ALIGNMENT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    new-instance v14, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const-string v12, "BEAUTIFIER_ALL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->BEAUTIFIER_ALL:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->$VALUES:[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->$VALUES:[Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$1;->$SwitchMap$com$samsung$android$sdk$pen$plugin$interfaces$SpenRecognizerInterface$RecognizerType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x9

    return v0

    :pswitch_1
    const/16 v0, 0x8

    return v0

    :pswitch_2
    const/4 v0, 0x7

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/4 v0, 0x5

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x3

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    sget-object v0, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$1;->$SwitchMap$com$samsung$android$sdk$pen$plugin$interfaces$SpenRecognizerInterface$RecognizerType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Beautifier All Recognition"

    return-object v0

    :pswitch_1
    const-string v0, "Beautifier Line Alignment Recognition"

    return-object v0

    :pswitch_2
    const-string v0, "Beautifier Layout Recognition"

    return-object v0

    :pswitch_3
    const-string v0, "Text Multiline Recognition"

    return-object v0

    :pswitch_4
    const-string v0, "Document Recognition"

    return-object v0

    :pswitch_5
    const-string v0, "Shape Recognition"

    return-object v0

    :pswitch_6
    const-string v0, "Text Recognition"

    return-object v0

    :pswitch_7
    const-string v0, "Shape Extraction"

    return-object v0

    :pswitch_8
    const-string v0, "Text Extraction"

    return-object v0

    :pswitch_9
    const-string v0, "All Extraction"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
