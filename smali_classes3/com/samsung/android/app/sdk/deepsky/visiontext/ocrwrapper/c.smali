.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/c;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/c;->a:Landroid/graphics/Rect;

    check-cast p1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->d(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;

    move-result-object p1

    return-object p1
.end method
