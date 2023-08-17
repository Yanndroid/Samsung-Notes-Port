.class public final Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CanvasActionListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0084\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J \u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J0\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\rH\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V",
        "onCanvasSizeChanged",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "onColorPicked",
        "color",
        "x",
        "",
        "y",
        "onPreTouch",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "onTouch",
        "onZoom",
        "panX",
        "panY",
        "zoom",
        "v3",
        "v4",
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


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;->this$0:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanvasSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;->this$0:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->onCanvasSizeChanged(IIII)V

    return-void
.end method

.method public onColorPicked(IFF)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;->this$0:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->onColorPicked(I)V

    return-void
.end method

.method public onPreTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;->this$0:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->onPreTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;->this$0:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onZoom(FFFFF)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onZoom x: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", zoom: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade$CanvasActionListener;->this$0:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;->onZoom()V

    return-void
.end method
