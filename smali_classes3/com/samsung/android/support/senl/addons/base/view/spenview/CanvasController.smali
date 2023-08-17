.class public final Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$Companion;,
        Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$TouchListener;,
        Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$PreTouchListener;,
        Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u0000 \u001b2\u00020\u0001:\u0004\u001a\u001b\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0016\u0010\u0015\u001a\u00020\u00122\u000c\u0010\u0016\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0010H\u0016J\u0012\u0010\u0017\u001a\u00020\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\r\u001a\u00060\u000eR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl;",
        "()V",
        "mCanvasView",
        "Landroid/view/View;",
        "mListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;",
        "mListenerEnableMask",
        "",
        "getMListenerEnableMask",
        "()I",
        "setMListenerEnableMask",
        "(I)V",
        "mSizeChangeListener",
        "Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;",
        "mView",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;",
        "close",
        "",
        "enableListener",
        "mask",
        "setCanvas",
        "view",
        "setCanvasActionListener",
        "listener",
        "setCanvasListeners",
        "CanvasSizeChangeListener",
        "Companion",
        "PreTouchListener",
        "TouchListener",
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


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCanvasView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mListenerEnableMask:I

.field private final mSizeChangeListener:Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->Companion:Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$Companion;

    const-string v0, "CanvasController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;-><init>(Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mSizeChangeListener:Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;

    return-void
.end method

.method public static final synthetic access$getMListener$p(Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;)Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->setCanvasListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mCanvasView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;

    return-void
.end method

.method public enableListener(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->setCanvasListeners()V

    :cond_0
    return-void
.end method

.method public final getMListenerEnableMask()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    return v0
.end method

.method public setCanvas(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mCanvasView:Landroid/view/View;

    return-void
.end method

.method public setCanvasActionListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;

    return-void
.end method

.method public setCanvasListeners()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set listeners : not canvas!"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$TouchListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$TouchListener;-><init>(Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    :goto_2
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$PreTouchListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$PreTouchListener;-><init>(Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V

    :goto_3
    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasControl$ICanvasActionListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mView:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mCanvasView:Landroid/view/View;

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->TAG:Ljava/lang/String;

    const-string v1, "Canvas is not View!"

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    and-int/lit8 v1, v1, 0x8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mSizeChangeListener:Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mSizeChangeListener:Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController$CanvasSizeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_5
    return-void
.end method

.method public final setMListenerEnableMask(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/spenview/CanvasController;->mListenerEnableMask:I

    return-void
.end method
