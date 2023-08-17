.class public Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackupViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowing:Z

.field private mItem:Lcom/google/android/material/navigation/NavigationBarItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mIsShowing:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mItem:Lcom/google/android/material/navigation/NavigationBarItemView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mBackupViews:Ljava/util/List;

    return-void
.end method

.method private backupChildViews()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mBackupViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mItem:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mBackupViews:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mItem:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mItem:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method private restoreChildViews()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mItem:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mBackupViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mBackupViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mItem:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->restoreChildViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mIsShowing:Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mIsShowing:Z

    return v0
.end method

.method public show(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->backupChildViews()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle_small:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mItem:Lcom/google/android/material/navigation/NavigationBarItemView;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/progress/BottomMenuProgressView;->mIsShowing:Z

    return-void
.end method
