.class public interface abstract Lcom/samsung/android/sdk/ocr/IRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close()V
.end method

.method public abstract detect(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
.end method

.method public abstract detectBlock(Landroid/graphics/Bitmap;Landroid/graphics/Point;[Landroid/graphics/Point;)Z
.end method

.method public abstract detectBlock(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z
.end method

.method public abstract detectText(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract hasText(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract hasText(Landroid/graphics/Bitmap;Z)Z
.end method

.method public abstract isHandwritten(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract isPrinted(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
.end method
