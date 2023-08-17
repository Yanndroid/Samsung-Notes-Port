.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u000fJ\u0006\u0010\u0017\u001a\u00020\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "mCanvasModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;)V",
        "canvasVisibility",
        "",
        "mCanvasCallBack",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "previewBitmap",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;",
        "getPreviewBitmap",
        "()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;",
        "previewVisibility",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "",
        "showCanvas",
        "showPreview",
        "Companion",
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
.field private static final BINDING_ID_CANVAS_VISIBILITY:Ljava/lang/String; = "canvasVisibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PREVIEW_BITMAP:Ljava/lang/String; = "previewBitmap"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PREVIEW_IMAGE_VIEW_MODEL:Ljava/lang/String; = "previewViewModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_PREVIEW_VISIBILITY:Ljava/lang/String; = "previewVisibility"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private canvasVisibility:Z

.field private mCanvasCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCanvasModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private previewVisibility:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$Companion;

    const-string v0, "PreviewImageViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->previewVisibility:Z

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel$mCanvasCallBack$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->addObserver(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getPreviewVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->previewVisibility:Z

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCanvasVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->canvasVisibility:Z

    return-void
.end method

.method public static final synthetic access$setPreviewVisibility$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->previewVisibility:Z

    return-void
.end method

.method private final getPreviewBitmap()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->isDocLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->getPreviewBitmap()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable;->removeObserver(Ljava/beans/PropertyChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasModel:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;

    :cond_1
    return-void
.end method

.method public closeCallbacks()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->mCanvasCallBack:Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "previewBitmap"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->getPreviewBitmap()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushPreviewBitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "previewVisibility"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->previewVisibility:Z

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "canvasVisibility"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->canvasVisibility:Z

    goto :goto_0

    :cond_2
    const-string v0, "previewViewModel"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final showCanvas()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->previewVisibility:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showCanvas - surfaceCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->canvasVisibility:Z

    const-string v0, "canvasVisibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->previewVisibility:Z

    const-string v0, "previewVisibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final showPreview()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showPreview - surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "previewBitmap"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;->previewVisibility:Z

    const-string v0, "previewVisibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method
