.class Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ocr/RecognizerInternal$ocr_processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41;->hasText(Landroid/graphics/Bitmap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41$1;->this$0:Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/samsung/android/sdk/ocr/IOCRecognizer;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 1

    const-string p3, "RecognizerInternal_OneUI41"

    const-string v0, "OCR Text Detecting(hasText)...."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/ocr/IOCRecognizer;->hasText(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method
