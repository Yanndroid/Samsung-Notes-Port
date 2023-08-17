.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;
    }
.end annotation


# instance fields
.field public mAsyncTask:Landroid/os/AsyncTask;

.field public mHolderListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;

.field public mHoverView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;

    return-void
.end method


# virtual methods
.method public dismissHoverPopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->dismiss(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverRecyclerViewHolderListener;->getItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener$HoverAsyncTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;)V

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageThumbnailHoverListener;->dismissHoverPopup()V

    :cond_3
    :goto_0
    return v1
.end method
