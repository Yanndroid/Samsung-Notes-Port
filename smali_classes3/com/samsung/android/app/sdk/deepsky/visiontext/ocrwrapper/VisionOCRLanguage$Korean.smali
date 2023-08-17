.class final Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Korean;
.super Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Korean"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\r\u0010\u0002\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Korean;",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;",
        "getConvertedId",
        "Lcom/samsung/android/sdk/ocr/OCRLanguage;",
        "getConvertedId$deepsky_sdk_2_2_9_release",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getConvertedId$deepsky_sdk_2_2_9_release()Lcom/samsung/android/sdk/ocr/OCRLanguage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRLanguage;->KOREAN:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    return-object v0
.end method
