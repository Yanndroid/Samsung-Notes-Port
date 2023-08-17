.class public interface abstract Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001e\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0005H&J\u0008\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0005H&J\u0008\u0010\u0011\u001a\u00020\u0003H&J\u0008\u0010\u0012\u001a\u00020\u0003H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0014\u001a\u00020\u0003H&J\u0008\u0010\u0015\u001a\u00020\u0003H&J\u0008\u0010\u0016\u001a\u00020\u0003H&J\u0012\u0010\u0017\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0008\u0010\u0018\u001a\u00020\u0003H&J\u0008\u0010\u0019\u001a\u00020\u0003H&J\u0008\u0010\u001a\u001a\u00020\u0003H&J\u0008\u0010\u001b\u001a\u00020\u0003H&J\u0008\u0010\u001c\u001a\u00020\u0003H&J\u0008\u0010\u001d\u001a\u00020\u0003H&J\u0008\u0010\u001e\u001a\u00020\u0003H&J\"\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010 \u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010!\u001a\u00020\u0003H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0007H&J\u0008\u0010$\u001a\u00020\u0003H&J\u0008\u0010%\u001a\u00020\u0003H&J\u0008\u0010&\u001a\u00020\u0003H&J\u0008\u0010\'\u001a\u00020\u0003H&\u00a8\u0006("
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/util/ISystemLogManager;",
        "",
        "onBrushEraserSettingPopupClose",
        "",
        "type",
        "",
        "isEraserSelected",
        "",
        "onBrushSettingOpen",
        "penName",
        "",
        "onColorGradationClose",
        "onColorGradationViewModeChange",
        "viewMode",
        "onColorPickerSelected",
        "onColorSelected",
        "color",
        "onDoneClicked",
        "onEraseAllClicked",
        "onEraserClicked",
        "onEyeDropperClosed",
        "onEyeDropperHandlerTapped",
        "onEyeDropperOpened",
        "onObjectAdded",
        "onPaletteSwipeNext",
        "onPaletteSwipePrev",
        "onPenClicked",
        "onPenUpPostingDone",
        "onPenUpPostingFail",
        "onPenUpStart",
        "onRedoClicked",
        "onSeekBarChanged",
        "value",
        "onSelectColorSetsOpened",
        "onShowHideBrushesClicked",
        "isOpen",
        "onTouchByEyedropper",
        "onUndoClicked",
        "onZoomIn",
        "onZoomOut",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onBrushEraserSettingPopupClose(IZ)V
.end method

.method public abstract onBrushSettingOpen(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onColorGradationClose()V
.end method

.method public abstract onColorGradationViewModeChange(I)V
.end method

.method public abstract onColorPickerSelected()V
.end method

.method public abstract onColorSelected(I)V
.end method

.method public abstract onDoneClicked()V
.end method

.method public abstract onEraseAllClicked()V
.end method

.method public abstract onEraserClicked(Z)V
.end method

.method public abstract onEyeDropperClosed()V
.end method

.method public abstract onEyeDropperHandlerTapped()V
.end method

.method public abstract onEyeDropperOpened()V
.end method

.method public abstract onObjectAdded(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onPaletteSwipeNext()V
.end method

.method public abstract onPaletteSwipePrev()V
.end method

.method public abstract onPenClicked()V
.end method

.method public abstract onPenUpPostingDone()V
.end method

.method public abstract onPenUpPostingFail()V
.end method

.method public abstract onPenUpStart()V
.end method

.method public abstract onRedoClicked()V
.end method

.method public abstract onSeekBarChanged(IILjava/lang/String;)V
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSelectColorSetsOpened()V
.end method

.method public abstract onShowHideBrushesClicked(Z)V
.end method

.method public abstract onTouchByEyedropper()V
.end method

.method public abstract onUndoClicked()V
.end method

.method public abstract onZoomIn()V
.end method

.method public abstract onZoomOut()V
.end method
