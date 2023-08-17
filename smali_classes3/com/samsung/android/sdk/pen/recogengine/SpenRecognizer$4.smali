.class synthetic Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

.field public static final synthetic $SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextMode:[I

.field public static final synthetic $SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->CHARACTER:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextMode:[I

    sget-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->SINGLE_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextMode:[I

    sget-object v4, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->MULTI_LINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextMode:[I

    sget-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;->OVERLAY:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    :try_start_4
    sget-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->TEXT_PLAIN:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    sget-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->TEXT_SYMBOL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    sget-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->NUMBER:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    sget-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->ENTITY:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v4, 0x5

    :try_start_8
    sget-object v5, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    sget-object v6, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->EMAIL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v5, 0x6

    :try_start_9
    sget-object v6, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    sget-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->URL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v6, 0x7

    :try_start_a
    sget-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$TextType:[I

    sget-object v8, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;->PHONE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$TextType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->values()[Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    :try_start_b
    sget-object v8, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->DEFAULT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v7, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT_EXTRACTOR:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v1, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->SHAPE_EXTRACTOR:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->SHAPE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->DOCUMENT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT_MULTILINE:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->BEAUTIFIER_LAYOUT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->BEAUTIFIER_LINE_ALIGNMENT:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$4;->$SwitchMap$com$samsung$android$sdk$pen$recogengine$SpenRecognizer$RecognizerType:[I

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->BEAUTIFIER_ALL:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
