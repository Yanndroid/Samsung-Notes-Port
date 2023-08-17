.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$HorizontalPositionUpdater;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;
    }
.end annotation


# static fields
.field private static final PAGE_FORMAT:Ljava/lang/String; = "%d/%d"


# instance fields
.field private mPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPositionUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;

.field private final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_scroll_bar_page_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mView:Landroid/widget/TextView;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getPositionUpdater()Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPositionUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public invisible()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setDirection(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$VerticalPositionUpdater;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$HorizontalPositionUpdater;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$HorizontalPositionUpdater;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPositionUpdater:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;

    return-void
.end method

.method public setPageCount(I)Z
    .locals 3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v0

    :cond_0
    return v1
.end method

.method public setPageIndex(I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->updateText()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateText()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "%d/%d"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v5, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;->mPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v5, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
