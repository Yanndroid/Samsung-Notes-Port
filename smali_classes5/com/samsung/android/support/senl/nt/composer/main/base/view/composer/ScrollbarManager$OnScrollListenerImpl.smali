.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnScrollListenerImpl"
.end annotation


# instance fields
.field private mScrollableSizeInContent:F

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)V

    return-void
.end method

.method private dispatchCancelEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getScrollableSizeInContent(ZF)F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->getNoteSizeInView(ZF)F

    move-result v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v0, p2

    return v0
.end method


# virtual methods
.method public onChangedScrollBarX(FLandroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->dispatchCancelEvent(Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->mScrollableSizeInContent:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getPanY()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->setPan(FF)V

    :cond_0
    return-void
.end method

.method public onChangedScrollBarY(FLandroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->dispatchCancelEvent(Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->getPanX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->mScrollableSizeInContent:F

    mul-float/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setPan(FF)V

    :cond_0
    return-void
.end method

.method public onReady(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->startContinuousChange()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->convertZoomFromNoteToView(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->getScrollableSizeInContent(ZF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->mScrollableSizeInContent:F

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getConvertToTextManager()Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->closeControl()V

    return-void
.end method

.method public onTouchUpScrollBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->endContinuousChange()Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager$OnScrollListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollbarManager;)Lcom/samsung/android/sdk/composer/SpenComposer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->smoothScrollToFitPage()V

    :cond_1
    return-void
.end method
