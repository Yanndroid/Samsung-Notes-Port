.class final Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnInflateCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;",
        "(Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;)V",
        "onInflated",
        "",
        "container",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflated(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;->getMInstanceModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->isClosed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver$OnInflateCallback;->this$0:Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsLifeCycleObserver;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsModelControlViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->setCanvasContainer(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer;)V

    :cond_1
    return-void
.end method
