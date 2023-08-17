.class public Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;,
        Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;
    }
.end annotation


# instance fields
.field public mAsyncTask:Landroid/os/AsyncTask;

.field public mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

.field public mHoverView:Landroid/view/View;

.field private final mViewMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mViewMode:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mViewMode:I

    return p0
.end method

.method public static bridge synthetic b(IZ)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->hasBackgroundColor(IZ)Z

    move-result p0

    return p0
.end method

.method private static hasBackgroundColor(IZ)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->hasBackgroundColorNotes(IZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dismissHoverPopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->dismiss(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHolderListener:Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;->getItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "pen_hovering"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v3, 0x9

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverAsyncTask;-><init>(Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;)V

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->mAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener;->dismissHoverPopup()V

    :cond_4
    :goto_0
    return v1
.end method
