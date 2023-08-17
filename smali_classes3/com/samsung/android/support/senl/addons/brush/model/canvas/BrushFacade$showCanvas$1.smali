.class public final Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$showCanvas$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->showCanvas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$showCanvas$1",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;",
        "onLoaded",
        "",
        "view",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$showCanvas$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$showCanvas$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;->access$getMSpenView$p(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;)Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvas;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade$showCanvas$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel$Companion;->getOBSV_PROPERTY_SHOW_CANVAS()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView;->setOnLoadedDocumentListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPaintingView$OnDocumentLoadedListener;)V

    return-void
.end method
