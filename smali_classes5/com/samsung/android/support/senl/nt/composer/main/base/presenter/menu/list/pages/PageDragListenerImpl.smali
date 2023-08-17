.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$DragNDropCompatM;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$DragNDropCompat;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IDragNDropCompat;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;
    }
.end annotation


# static fields
.field private static final MOVE_ANIM_DURATION:I = 0x190

.field private static final NO_INDEX:I = -0x1

.field private static final SCROLL_AREA_ONE:I = 0x64

.field private static final SCROLL_AREA_TWO:I = 0x32

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

.field private mDragNDropCompat:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IDragNDropCompat;

.field private mIndex:I

.field private mIsMoved:Z

.field private mPageDragOutAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;

.field private mPageId:Ljava/lang/String;

.field private mPageListTopMenuDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;

.field private mScrollBottomAreaOne:I

.field private mScrollBottomAreaTwo:I

.field private mTargetItemPosition:Landroid/graphics/PointF;

.field private mTargetPageId:Ljava/lang/String;

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PageDragListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetItemPosition:Landroid/graphics/PointF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIsMoved:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageListTopMenuDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-le p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$DragNDropCompat;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$DragNDropCompat;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/b;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$DragNDropCompatM;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$DragNDropCompatM;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/c;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mDragNDropCompat:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IDragNDropCompat;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    return-object p0
.end method

.method private autoScroll(Landroidx/recyclerview/widget/RecyclerView;F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mScrollBottomAreaOne:I

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mScrollBottomAreaTwo:I

    int-to-float v0, v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    add-int/lit8 p2, p2, 0x32

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    add-int/lit8 p2, p2, 0x19

    :goto_0
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v0, p2

    if-lez v0, :cond_3

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p2, v0, p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    add-int/lit8 p2, p2, -0x32

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    add-int/lit8 p2, p2, -0x19

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;

    return-object p0
.end method

.method private cancelAnimations()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearAppAniInfo(IZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object p2, p2, p1

    iput-boolean v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoveAnimating:Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object p2, p2, p1

    iput-boolean v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isReturnAnimating:Z

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object p1, p2, p1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetPageId:Ljava/lang/String;

    return-object p0
.end method

.method private dragAnimToNextIndex(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v1, v0, p2

    iget-boolean v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    array-length v1, v0

    if-ge p2, v1, :cond_2

    aget-object v0, v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    array-length v0, v0

    if-ge p2, v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->returnAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-gt v0, p2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->moveAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->returnAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private dragAnimToPrevIndex(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v1, v0, p2

    iget-boolean v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    aget-object v0, v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    :goto_0
    if-gt v0, p2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->returnAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->moveAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    array-length p2, p2

    if-ge v0, p2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->returnAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private dragAnimToSameIndex(Landroidx/recyclerview/widget/RecyclerView;FF)V
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;->getIndex()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    if-le p2, v0, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    :goto_0
    if-lt p3, p2, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->returnAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    :goto_1
    if-gt p3, p2, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->returnAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->cancelAnimations()V

    return-void
.end method

.method private findChildViewUnder(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-ltz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_1

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    if-lt p1, v1, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findChildViewUnder#, cannot drag to PlusPage, position/lastPosition = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->clearAppAniInfo(IZ)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->isPageDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroidx/recyclerview/widget/RecyclerView;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->onDragLocation(Landroidx/recyclerview/widget/RecyclerView;FF)Z

    move-result p0

    return p0
.end method

.method private initData(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initData# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mDragNDropCompat:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IDragNDropCompat;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IDragNDropCompat;->cancelDragAndDrop(Landroid/view/View;)V

    const-string p1, "invalid position"

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->release(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x32

    iput v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mScrollBottomAreaTwo:I

    add-int/lit8 v5, v5, -0x32

    iput v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mScrollBottomAreaOne:I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v5, :cond_5

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->initMoveDistance(IIII)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData#, first : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / second : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mDragNDropCompat:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IDragNDropCompat;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IDragNDropCompat;->cancelDragAndDrop(Landroid/view/View;)V

    const-string p1, "fail to find view"

    goto :goto_0
.end method

.method private initMoveDistance(IIII)V
    .locals 6

    new-array v0, p3, [Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    add-int/lit8 v0, p4, -0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;-><init>()V

    aput-object v4, v2, v1

    rem-int v2, v1, p4

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v2, v2, v1

    mul-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p1

    int-to-float v3, v3

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->setDist(FF)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v2, v2, v1

    int-to-float v4, p1

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->setDist(FF)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v2, v2, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->movedIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;-><init>()V

    aput-object v4, v1, v2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;-><init>()V

    aput-object v4, v2, v1

    rem-int v2, v1, p4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v2, v2, v1

    mul-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->setDist(FF)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v2, v2, v1

    mul-int v4, v0, p1

    int-to-float v4, v4

    mul-int/lit8 v5, p2, -0x1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->setDist(FF)V

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v2, v2, v1

    iput v1, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->movedIndex:I

    goto :goto_2

    :cond_3
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initData# span "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " distance: "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isPageDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "Page_Thumbnail"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->release(Ljava/lang/String;)V

    return-void
.end method

.method private varargs makeAnimatorSet(IZ[Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    new-instance v1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;ILandroid/animation/AnimatorSet;Z)V

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private moveAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveAnimation# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " holder# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " info# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v0, p1, p2

    iput-boolean v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isReturnAnimating:Z

    aget-object v0, p1, p2

    iput-boolean v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoveAnimating:Z

    aget-object p1, p1, p2

    iput-boolean v3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v5, v4, p2

    iget-boolean v5, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoveAnimating:Z

    if-eqz v5, :cond_1

    const-string p1, "moveAnimation# animating"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    aget-object v5, v4, p2

    iget-boolean v5, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    if-eqz v5, :cond_2

    const-string p1, "moveAnimation# already"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    aget-object v4, v4, p2

    iget-boolean v4, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isReturnAnimating:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returnAnimation# animating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v4, v4, p2

    iput-boolean v3, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoveAnimating:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v4, 0x0

    aput v4, v2, v1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->distX:F

    aput v5, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$5;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v0, [F

    aput v4, v5, v1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v4, v4, p2

    iget v4, v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->distY:F

    aput v4, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$6;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    invoke-direct {p0, p2, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->makeAnimatorSet(IZ[Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v1, v0, p2

    iput-boolean v3, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;

    aget-object p2, v0, p2

    iget p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->movedIndex:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->setHolderPageIndex(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;I)V

    return-void
.end method

.method private onDragLocation(Landroidx/recyclerview/widget/RecyclerView;FF)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "onDrag# mAniInfo is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->findChildViewUnder(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "onDrag# target view is null"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->autoScroll(Landroidx/recyclerview/widget/RecyclerView;F)V

    return v1

    :cond_1
    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;->getIndex()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->autoScroll(Landroidx/recyclerview/widget/RecyclerView;F)V

    return v1

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    if-le v0, v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->dragAnimToNextIndex(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->dragAnimToPrevIndex(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->dragAnimToSameIndex(Landroidx/recyclerview/widget/RecyclerView;FF)V

    :goto_0
    return v3
.end method

.method private release(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIsMoved:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->cancelAnimations()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageId:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;

    invoke-interface {v0, p1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPresenter;->move(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageDragOutAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;->release()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageDragOutAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetItemPosition:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIsMoved:Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetPageId:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    return-void
.end method

.method private returnAnimation(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v1, p1, p2

    iput-boolean v0, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isReturnAnimating:Z

    aget-object v1, p1, p2

    iput-boolean v0, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoveAnimating:Z

    aget-object p1, p1, p2

    iput-boolean v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v2, v1, p2

    iget-boolean v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isReturnAnimating:Z

    if-eqz v2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "returnAnimation# returning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    aget-object v2, v1, p2

    iget-boolean v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    if-nez v2, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "returnAnimation# already"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    aget-object v1, v1, p2

    iget-boolean v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoveAnimating:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnAnimation# animating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object v1, v1, p2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isReturnAnimating:Z

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnAnimation# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v3, v1, [F

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    aput v4, v3, v0

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$3;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v1, [F

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    aput v6, v5, v0

    aput v4, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$4;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->makeAnimatorSet(IZ[Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->setHolderPageIndex(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    aget-object p1, p1, p2

    iput-boolean v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;->isMoved:Z

    return-void
.end method

.method private setHolderPageIndex(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;I)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListContract$IPageHolder;->setPageIndexText(I)V

    return-void
.end method


# virtual methods
.method public getAnimationInfo()[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mAniInfo:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$AnimationItemInfo;

    return-object v0
.end method

.method public getDragIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    return v0
.end method

.method public getPageListTopMenuDragListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageListTopMenuDragListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$PageListTopMenuDragListenerImpl;

    return-object v0
.end method

.method public hasDragInfo()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "onDrag#exited"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    move v1, v2

    goto/16 :goto_2

    :cond_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDrag#ended, isMoved : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIsMoved:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIsMoved:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageDragOutAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetItemPosition:Landroid/graphics/PointF;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;)V

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;->startDragOutAnimation(Landroid/graphics/PointF;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_4
    const-string p1, "DragEnd"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->release(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v4, "onDrag#drop"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->findChildViewUnder(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;->getIndex()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    if-eq v6, v7, :cond_9

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIsMoved:Z

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageItemView;->getPageId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetPageId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDrag#drop, move - from/to = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v3, [I

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetItemPosition:Landroid/graphics/PointF;

    aget v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    sub-float/2addr v1, v5

    iput v1, v3, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTargetItemPosition:Landroid/graphics/PointF;

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageDragOutAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-direct {v1, v3, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;->prepareDragOutAnimation(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrag# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->onDragLocation(Landroidx/recyclerview/widget/RecyclerView;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->autoScroll(Landroidx/recyclerview/widget/RecyclerView;F)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v3, "onDrag# start"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIsMoved:Z

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->isPageDragEvent(Landroid/view/DragEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->initData(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    goto :goto_1

    :cond_8
    move p2, v1

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_drag_start_at:I

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->sendTalkBackMessage(Ljava/lang/String;)V

    move v1, p2

    :cond_9
    :goto_2
    return v1
.end method

.method public setDragInfo(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageId:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mIndex:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mPageDragOutAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$IPageDragOutAnimator;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$1;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;JJ)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageDragListenerImpl;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method
