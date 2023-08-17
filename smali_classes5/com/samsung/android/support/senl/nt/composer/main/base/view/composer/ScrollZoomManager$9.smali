.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setOnGenericMotionListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;->isCtrlPressedLast()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x9

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const p1, 0x3f8e38e4

    goto :goto_0

    :cond_3
    const p1, 0x3f666666    # 0.9f

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    mul-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomScale(FFF)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method
