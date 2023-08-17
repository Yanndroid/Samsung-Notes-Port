.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "onUpdate",
        "",
        "info",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;->getId()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x2c89

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$updateZoomRatios(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)V

    goto/16 :goto_7

    :cond_2
    :goto_1
    const/16 v0, 0x2b5c

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$getMFacade$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$getMPrevZoomRatio(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$getMCheckZoomInOut(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onZoomIn()V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$setMCheckZoomInOut(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$getMFacade$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->getView()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IView;->getZoomScale()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$getMPrevZoomRatio(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$getMCheckZoomInOut(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->onZoomOut()V

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/zoom/AbsZoomViewModel;->updateZoomText()V

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v0, 0x2b5d

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$updateZoomButton(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;)V

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v0, 0x2b5f

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel$mCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->access$setMCheckZoomInOut(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;I)V

    :cond_a
    :goto_7
    return-void
.end method
