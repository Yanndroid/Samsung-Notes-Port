.class public final Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveExecutor$OnSaveFileCallback;",
        "existOnLocal",
        "",
        "path",
        "",
        "getNewDocPath",
        "getNewThumbnailPath",
        "onSaveFinished",
        "",
        "isSuccess",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public existOnLocal(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->access$getMInternalPath$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_0

    :goto_0
    return v1
.end method

.method public getNewDocPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->access$getMOutputPaintingDocPath$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewThumbnailPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->access$getMOutputThumbnailPath$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSaveFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->access$getMBrushFacade$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;)Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_SHOW_PREVIEW_IMAGES_FOR_SAVING()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/save/AbsSaveModel;->onCompleteAllProcess(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$mSaveFileCallback$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->access$setMProcessListener$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel$IOnProcessListener;)V

    return-void
.end method
