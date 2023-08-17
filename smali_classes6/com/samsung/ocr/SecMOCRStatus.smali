.class Lcom/samsung/ocr/SecMOCRStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEC_MOCR_CANCELED_BY_USER:I = 0x11

.field public static final SEC_MOCR_FAILED_TO_ALLOCATE_MEMORY:I = 0x6

.field public static final SEC_MOCR_FAILED_TO_DETECT_TEXT_BLOCK:I = 0xb

.field public static final SEC_MOCR_FAILED_TO_LOAD_CLASSIFIER:I = 0x10

.field public static final SEC_MOCR_FAILED_TO_POST_PROCESS:I = 0xe

.field public static final SEC_MOCR_FAILED_TO_RECOG_TEXT_BLOCK:I = 0xc

.field public static final SEC_MOCR_IMAGE_DATA_EMPTY:I = 0x8

.field public static final SEC_MOCR_IMAGE_TYPE_NOT_SUPPORTED:I = 0x7

.field public static final SEC_MOCR_INVALID_ALIGNMENT:I = 0x5

.field public static final SEC_MOCR_INVALID_DATA_FILE_FOLDER:I = 0xf

.field public static final SEC_MOCR_INVALID_ENGINE_MODE:I = 0x3

.field public static final SEC_MOCR_INVALID_IMAGE_RECT:I = 0xa

.field public static final SEC_MOCR_INVALID_IMAGE_SIZE:I = 0x9

.field public static final SEC_MOCR_INVALID_INPUT_PARAMETER:I = 0x1

.field public static final SEC_MOCR_INVALID_MEM_FILE_CALLBACK_FUNC:I = 0x12

.field public static final SEC_MOCR_LANGUAGE_NOT_SUPPORTED:I = 0x2

.field public static final SEC_MOCR_NEED_TO_INITILIZE:I = 0x4

.field public static final SEC_MOCR_NO_ERROR:I = 0x0

.field public static final SEC_MOCR_NO_LEGAL_CHARACTER_FOUND:I = 0xd

.field public static final SEC_MOCR_UNKNOWN_INSIDE_ERROR:I = 0x15

.field public static final SEC_MOCR_UNKNOWN_JNI_ERROR:I = 0x16

.field public static final SEC_MOCR_UNKNOWN_LAYOUT_ERROR:I = 0x13

.field public static final SEC_MOCR_UNKNOWN_RECOG_ERROR:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cvtStatus(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnknownError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->getValue()I

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelReadError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRNoResultText:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRNoTextDetection:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelExecutionError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelConfigureError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRModelNotInitError:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRUnsupportedFormat:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;->MOCRSuccess:Lcom/samsung/android/ocr/MOCRConstants$MOCRStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
