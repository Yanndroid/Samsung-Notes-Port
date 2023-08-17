.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initScrollManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    return-void
.end method

.method public addZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V

    return-void
.end method

.method public removeNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removeNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    return-void
.end method
