.class public Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final REATTACH_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TabletDrawerView"


# instance fields
.field private mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragSpace:I

.field private mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

.field private mDrawerBarWidth:I

.field private mDrawerButton:Landroid/widget/ImageView;

.field private final mDrawerButtonListener:Landroid/view/View$OnClickListener;

.field private mDrawerLayoutWidth:I

.field private mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

.field private mDrawerStatusListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;

.field private mFragmentContainerScrollY:I

.field private mFragmentContainerView:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDrawerOpened:Z

.field private mIsRunningAnimator:Z

.field private final mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMainView:Landroid/view/View;

.field private mMainViewAnimator:Landroid/animation/ValueAnimator;

.field private mNotesModeIndex:I

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

.field private final mReattachObserverRunnable:Ljava/lang/Runnable;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mSettingButtonListener:Landroid/view/View$OnClickListener;

.field private mSettingsUpdateBadge:Landroid/view/View;

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerScrollY:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mNotesModeIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mReattachObserverRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerScrollY:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mNotesModeIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mReattachObserverRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDragSpace:I

    return p0
.end method

.method private closeDrawerMoveAnimator(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeDrawerMoveAnimator : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabletDrawerView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerScrollY:I

    const/4 v1, 0x1

    if-gtz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->hideDrawerHolderIcon(Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->resetIconPosition(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setVisibility(I)V

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setGapStrategy(Z)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$15;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$15;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawerWithFinishedRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private closeDrawerWithFinishedRunnable(Ljava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const-wide/16 v4, 0x190

    if-nez v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getAllNotesY()F

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v0, -0x1

    if-ne v6, v1, :cond_2

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getAllNotesY()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v7

    add-int/lit8 v8, v1, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getDividerHeight()I

    move-result v7

    int-to-float v7, v7

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getAllNotesY()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v7, v8

    :goto_1
    add-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBarWidth:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerScrollY:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private hideDrawerHolderIcon(Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->isDefaultFolderType(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setIconLayoutVisible(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideDrawerHolderIcon# holder size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", invisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TabletDrawerView"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    return p0
.end method

.method private isViewAttached()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-eqz v0, :cond_0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "TabletDrawerView"

    const-string v2, "isViewAttached# fail"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerScrollY:I

    return-void
.end method

.method private moveDrawer(F)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-gt v1, v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v2, -0x1

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v5

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getDividerHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v6, v5

    mul-float/2addr v6, p1

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDragSpace:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getAllNotesY()F

    move-result v6

    add-float/2addr v6, v5

    invoke-virtual {v4, v6}, Landroid/view/View;->setY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDragSpace:I

    int-to-float v1, v0

    const v2, 0x3f2b851f    # 0.67f

    mul-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerScrollY:I

    int-to-float v3, v2

    int-to-float v0, v0

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v4

    sub-float/2addr p1, v0

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int p1, v3

    sub-int/2addr p1, v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->scrollBy(I)V

    :cond_4
    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Z)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->hideDrawerHolderIcon(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->isViewAttached()Z

    move-result p0

    return p0
.end method

.method private openDrawerMoveAnimator(Z)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->hideDrawerHolderIcon(Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openDrawerMoveAnimator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabletDrawerView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setGapStrategy(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateDrawerFragmentLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$13;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerView:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$14;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;ZLjava/lang/Runnable;Ljava/util/ArrayList;I)V

    invoke-static {v0, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->nextLayoutChanged(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    iput v7, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerScrollY:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->resetIconPosition(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setGapStrategy(Z)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setIconLayoutVisible(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)V

    return-void
.end method

.method private reCloseDrawer()V
    .locals 2

    const-string v0, "TabletDrawerView"

    const-string v1, "recloseDrawer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$16;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawerWithFinishedRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_container_with_drawer_corner_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNotesListLayoutWithAnimation(I)V

    return-void
.end method

.method private reopenDrawer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    const-string v1, "TabletDrawerView"

    if-nez v0, :cond_1

    const-string v0, "reopenDrawerFinished# drawer is closed!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "reopenDrawer"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->hideDrawerHolderIcon(Z)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setVisibility(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setIconLayoutVisible(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerLayoutWidth:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNotesListLayoutWithAnimation(I)V

    return-void
.end method

.method private resetIconPosition(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->hideDrawerHolderIcon(Z)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconList()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconDstY()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->showSelectedIcon(Z)V

    return-void
.end method

.method private setDrawerButton()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    const-string v1, "TabletDrawerView"

    if-nez v0, :cond_0

    const-string v0, "setDrawerButton# RecyclerView is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_header_drawer_icon:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const-string v0, "setDrawerButton# DrawerButton is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->drawer_description:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setDrawerLayoutWidth()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tablet_drawer_bar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBarWidth:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tablet_drawer_fragment_landscape_width_ratio_tablet:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tablet_drawer_fragment_landscape_max_width_tablet:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tablet_drawer_fragment_portrait_width_ratio_tablet:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tablet_drawer_fragment_portrait_max_width_tablet:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerStatusListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBarWidth:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;->setDrawerMaxWidth(II)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBarWidth:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDragSpace:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerLayoutWidth:I

    return-void
.end method

.method private setGapStrategy(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->noteslist_recyclerview:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->getLayoutMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isStaggeredGridLayout(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    :cond_3
    return-void
.end method

.method private setIconLayoutVisible(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;I)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getIconLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->isDefaultFolderType(I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->showArrowIcon(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    return-void
.end method

.method private setSettingButton()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_layout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_update_badge:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingsUpdateBadge:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_setting:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_setting_icon_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setUpdateSettingsBadgeListener(Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;)V

    return-void
.end method

.method private showArrowIcon(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getArrowIconLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->showSelectedIcon(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getArrowIconLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->hasChild()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private showSelectedIcon(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getFolderUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerTitleBold(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setIconSelected(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateDrawerFragmentLayout()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerLayoutWidth:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDrawerFragmentLayout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabletDrawerView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNotesListLayout(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->drawer_corner_width_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->tablet_memolist_container:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const/4 p1, -0x1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNotesListLayoutWithAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->drawer_corner_width_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotesListLayoutWithAnimation# marginStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabletDrawerView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$11;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$12;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$12;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public changedDrawerStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    return-void
.end method

.method public changedGcsEnableStatus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateGcsDoucumentMap()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->updateDrawerDisplayData()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateDrawerBar()V

    return-void
.end method

.method public closeDrawer()Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "TabletDrawerView"

    const-string v2, "closeDrawer"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawerMoveAnimator(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_container_with_drawer_corner_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNotesListLayoutWithAnimation(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerStatusListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;->changedDrawerStatus(Z)V

    :cond_1
    return v0
.end method

.method public down()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->isViewAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    const-string v0, "TabletDrawerView"

    const-string v2, "interceptTouchLayout# down"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawerMoveAnimator(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawerMoveAnimator(Z)V

    :goto_0
    return-void
.end method

.method public initFolderDataMap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->initFolderDataMap()V

    return-void
.end method

.method public isFreeFormWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRunningAnimator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    return v0
.end method

.method public move(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->isViewAttached()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "TabletDrawerView"

    const-string v0, "interceptTouchLayout# move - ViewAttached fail"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void

    :cond_2
    float-to-int v0, p1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBarWidth:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNotesListLayout(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->moveDrawer(F)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "TabletDrawerView"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    const-string v0, "onConfigurationChanged ActivityContract disconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerLayoutWidth()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateDrawerFragmentLayout()V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mNotesModeIndex:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isDrawerInvisibleMode(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerLayoutWidth:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNotesListLayout(I)V

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->resetIconPosition(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$layout;->tablet_drawer_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->removeUpdateSettingsBadgeListener()V

    :cond_0
    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "SharedCoeditInvitation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "SharedInvitation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onFolderDeleteVerifySuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onFolderDeleteVerifySuccess()V

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->noteslist_recyclerview:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->scrollToTop()V

    :cond_1
    return-void

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->isExecuteType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveFolderExpandState(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onExecuteItemSelected(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onFolderSelected(Ljava/lang/String;)V

    const/16 p1, 0x3f0

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setCoeditHasBadge(Z)V

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setGcsHasDrawerBadge(Z)V

    goto :goto_1

    :cond_4
    const/16 p1, 0x3ef

    if-ne p2, p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public onPostLaunch(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerStatusListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerLayoutWidth()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->changedDrawerStatus(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "TabletDrawerView"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_fragment_container:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerView:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tablet_memolist_container:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_recyclerview:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-direct {p1, p0, v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->saveArguments(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNewBadge()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarClickListener()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerPresenter(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerLayoutWidth()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarAnimator(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setToolTipText(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setSettingButton()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getFolderUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerTitleBold(Ljava/lang/String;)V

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "SharedCoeditInvitation"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "SharedInvitation"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public openDrawer(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawerMoveAnimator(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerLayoutWidth:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNotesListLayoutWithAnimation(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerLayoutWidth:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->updateNotesListLayout(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->setDrawerButton()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerStatusListener:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$OnDrawerStatus;->changedDrawerStatus(Z)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveFolderExpandState(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActivityContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    return-void
.end method

.method public setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public setDrawerTitleBold(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    if-nez v1, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getPrevFolderUuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getFolderUuid()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->indexOfDrawerDisplayData(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->applyHighlightSelectedHolder(Z)V

    :cond_3
    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setIconSelected(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setFolderUuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->setFolderUuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNotesModeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mNotesModeIndex:I

    return-void
.end method

.method public setPostNotifyDataSetChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mReattachObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mReattachObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public up(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptTouchLayout# up - positionX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabletDrawerView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->isViewAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerPenRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    const-string v2, "b"

    const-string v3, "8001"

    const-string v4, "103"

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDragSpace:I

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawer()Z

    :goto_0
    invoke-static {v4, v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->reopenDrawer()V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDragSpace:I

    div-int/lit8 v5, v0, 0x2

    if-le p1, v5, :cond_6

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawer(Z)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawer(Z)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->reCloseDrawer()V

    :cond_7
    :goto_1
    return-void
.end method

.method public updateDocumentCountMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->updateDocumentCountMap(Ljava/util/Map;)V

    return-void
.end method

.method public updateDrawerBar()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->onDataChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsRunningAnimator:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mIsDrawerOpened:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconYGap()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->closeDrawerMoveAnimator(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->getIconHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mFragmentContainerView:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;ZI)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->nextLayoutChanged(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public updateDrawerDisplayData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->updateDrawerDisplayData()V

    return-void
.end method

.method public updateNewBadge()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->checkUpdateNewBadge()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->checkMDENewBadge()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->checkCoeditNewBadge()Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    :goto_3
    if-ne v0, v2, :cond_4

    if-ne v3, v2, :cond_4

    if-ne v4, v2, :cond_4

    move v1, v2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_header_drawer_icon:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_button_new_badge:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_6

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingsUpdateBadge:Landroid/view/View;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_update_badge:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingsUpdateBadge:Landroid/view/View;

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingsUpdateBadge:Landroid/view/View;

    if-nez v2, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_9

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mSettingsUpdateBadge:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mDrawerBar:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->updateNewBadge(I)V

    return-void
.end method

.method public updateNoteViewByDrawerObserver()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->updateNoteViewByDrawerObserver()V

    :cond_0
    return-void
.end method

.method public verifyForDelete()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->verifyForDelete()V

    return-void
.end method
