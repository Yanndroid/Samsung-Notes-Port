.class Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

.field public final synthetic val$view:Lcom/samsung/android/sdk/composer/SpenComposer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;Lcom/samsung/android/sdk/composer/SpenComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;->val$view:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;->val$view:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    return-void
.end method

.method public addZoomListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenZoomListenerImpl$ZoomListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;->val$view:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    return-void
.end method

.method public removeNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;->val$view:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setNoteZoomScrollerListener(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScrollerListener;)V

    return-void
.end method
