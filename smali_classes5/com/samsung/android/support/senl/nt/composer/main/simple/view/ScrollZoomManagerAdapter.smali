.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

.field private final mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

.field private mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

.field private mView:Lcom/samsung/android/sdk/composer/SpenComposer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrollZoomManagerAdapter"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    return-object p0
.end method


# virtual methods
.method public init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onChangedPageLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;Lcom/samsung/android/sdk/composer/SpenComposer;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->updatePageCount(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setOnGenericMotionListener(Landroid/content/Context;)V

    return-void
.end method

.method public onAttachedView(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onAttachedView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomListener(Lcom/samsung/android/sdk/pen/engine/deltaZoom/SpenZoomListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/view/ScrollZoomManagerAdapter;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->release()V

    return-void
.end method
