.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;
.super Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;)V
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
        "com/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V

    return-void
.end method

.method public onUpdate(Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Info;)V
    .locals 8
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
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES()I

    move-result v1

    const-string v2, "canvasVisibility"

    const/4 v3, 0x0

    const-string v4, "previewVisibility"

    const-string v5, "previewBitmap"

    const/4 v6, 0x1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "show Preview Image"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$setPreviewVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$setCanvasVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING()I

    move-result v1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "show Preview Image for saving."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$setPreviewVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_SHOW_CANVAS()I

    move-result v1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "show canvas."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$setCanvasVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$setPreviewVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;Z)V

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_UPDATE_PREVIEW()I

    move-result v0

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$getPreviewVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "update Preview Image"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    return-void
.end method
