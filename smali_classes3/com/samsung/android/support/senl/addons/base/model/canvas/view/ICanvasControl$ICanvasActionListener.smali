.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;
.implements Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ITouchListener;
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICanvasActionListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;",
        "Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;",
        "Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ITouchListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;",
        "onCanvasSizeChanged",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
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
.method public abstract onCanvasSizeChanged(IIII)V
.end method
