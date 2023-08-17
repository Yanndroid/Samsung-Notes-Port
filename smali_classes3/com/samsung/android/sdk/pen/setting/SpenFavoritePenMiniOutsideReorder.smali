.class Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/favoritepen/OnFavoritePenMiniViewDragListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;
    }
.end annotation


# static fields
.field private static final ENTRY_ANIMATION_DURATION:I = 0x190

.field private static final EXIT_ANIMATION_DURATION:I = 0xc8

.field private static final SCALE_DOWN_RATIO:F = 0.6f

.field private static final SCALE_NORMAL_RATIO:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "SpenFavoritePenMiniOutsideReorder"


# instance fields
.field private mDragDropListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;

.field private mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

.field private mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

.field private mIsEntryDrop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mIsEntryDrop:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mIsEntryDrop:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private isNotInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public close(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close() removeFromParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenFavoritePenMiniOutsideReorder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mDragDropListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initFloatingView(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onDropToPosition(II)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mIsEntryDrop:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getY()F

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    int-to-float p1, p1

    aput p1, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v3, [F

    aput v2, v1, v5

    int-to-float p2, p2

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v1

    new-array v2, v3, [F

    aput v1, v2, v5

    const/4 v1, 0x0

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result v4

    new-array v6, v3, [F

    aput v4, v6, v5

    aput v1, v6, v0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p1, v6, v5

    aput-object p2, v6, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    aput-object v2, v6, v3

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onDropped()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mDragDropListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;->onDropped()V

    :cond_1
    return-void
.end method

.method public onStartDrag(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;IZ)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mDragDropListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;->onStartDrag()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v4, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v5, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setPenInfo(Ljava/lang/String;IIFZ)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMini:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniView;->setSelected(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mIsEntryDrop:Z

    const/4 p3, 0x3

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput v2, v1, p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    neg-int p2, p2

    :goto_0
    int-to-float p2, p2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p3, v0, p1

    aput-object p2, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onUpdatePosition(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->isNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mFloatingFavoritePenMiniCover:Landroid/widget/RelativeLayout;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setY(F)V

    return-void
.end method

.method public setDragDropListener(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->mDragDropListener:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;

    return-void
.end method
