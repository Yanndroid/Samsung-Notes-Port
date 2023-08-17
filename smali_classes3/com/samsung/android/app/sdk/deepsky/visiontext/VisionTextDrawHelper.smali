.class public interface abstract Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper$OnSelectedTextChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\r\u0008f\u0018\u00002\u00020\u0001:\u00018J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0012\u001a\u00020\u000cH&J\u0008\u0010\u0013\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0018\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000cH&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000cH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000cH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u000cH&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020$H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020,H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u000cH&J\u0008\u0010/\u001a\u00020\u0003H&J\u0008\u00100\u001a\u00020\u000cH&J\u0010\u00101\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u000cH&J\u0018\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020,H&J \u00106\u001a\u00020\u000c2\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020,2\u0006\u00102\u001a\u00020\u000cH&J\u0010\u00107\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&\u00a8\u00069"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper;",
        "",
        "clearAllSelection",
        "",
        "dismissPopupMenu",
        "drawSelection",
        "canvas",
        "Landroid/graphics/Canvas;",
        "finishTextSelection",
        "getSelectedText",
        "",
        "handleTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "init",
        "view",
        "Landroid/view/View;",
        "isTextSelected",
        "selectAll",
        "setBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isScale",
        "setBitmapRect",
        "rect",
        "Landroid/graphics/RectF;",
        "setDimEnabled",
        "enabled",
        "setEnableCopyPastePopup",
        "setLegacyBehaviorEnabled",
        "setOcrResult",
        "ocrResult",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
        "setOnScaleState",
        "scaleState",
        "",
        "setOnSelectedTextChangeListener",
        "listener",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper$OnSelectedTextChangeListener;",
        "setOnTranslationState",
        "translationState",
        "setScaleFactor",
        "scale",
        "",
        "setUnderlineVisible",
        "visible",
        "showPopupMenu",
        "startTextSelectionByButton",
        "startTextSelectionByLastTouch",
        "isLongPress",
        "startTextSelectionByLongClick",
        "x",
        "y",
        "startTextSelectionWithCoordinate",
        "updateTextSelection",
        "OnSelectedTextChangeListener",
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


# virtual methods
.method public abstract clearAllSelection()V
.end method

.method public abstract dismissPopupMenu()V
.end method

.method public abstract drawSelection(Landroid/graphics/Canvas;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract finishTextSelection()V
.end method

.method public abstract getSelectedText()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract handleTouchEvent(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract init(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isTextSelected()Z
.end method

.method public abstract selectAll()V
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;Z)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setBitmapRect(Landroid/graphics/RectF;)V
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setDimEnabled(Z)V
.end method

.method public abstract setEnableCopyPastePopup(Z)V
.end method

.method public abstract setLegacyBehaviorEnabled(Z)V
.end method

.method public abstract setOcrResult(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;)V
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setOnScaleState(I)V
.end method

.method public abstract setOnSelectedTextChangeListener(Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper$OnSelectedTextChangeListener;)V
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper$OnSelectedTextChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setOnTranslationState(I)V
.end method

.method public abstract setScaleFactor(F)V
.end method

.method public abstract setUnderlineVisible(Z)V
.end method

.method public abstract showPopupMenu()V
.end method

.method public abstract startTextSelectionByButton()Z
.end method

.method public abstract startTextSelectionByLastTouch(Z)Z
.end method

.method public abstract startTextSelectionByLongClick(FF)Z
.end method

.method public abstract startTextSelectionWithCoordinate(FFZ)Z
.end method

.method public abstract updateTextSelection(Landroid/graphics/RectF;)V
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
