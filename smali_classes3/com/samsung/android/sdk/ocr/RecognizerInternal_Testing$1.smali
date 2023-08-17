.class Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ocr/RecognizerInternal$ocr_processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing;->recognizeDetectedLines(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing$1;->this$0:Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/samsung/android/sdk/ocr/IOCRecognizer;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 2

    const-string v0, "RecognizerOnTesting"

    const-string v1, "OCR Text Recognizing Detected Lines...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/sdk/ocr/IOCRecognizer;->recognizeDetectedLines(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p1

    return p1
.end method
