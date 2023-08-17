.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;
    }
.end annotation


# static fields
.field private static final ANI_CONTRACT_DURATION:I = 0x15e

.field private static final ANI_CONTRACT_OFFSET:I = 0x64

.field private static final ANI_DIM_DURATION:I = 0x1c2

.field private static final ANI_EXPAND_DURATION:I = 0x96

.field private static final ANI_EXPAND_OFFSET:I = 0x0

.field private static final ANI_MOVE_DURATION:I = 0x1c2

.field private static final ANI_OPENER_ROTATE_DURATION:I = 0x12c

.field private static final ANI_PEN_VIEW_UP_DURATION:I = 0x12c

.field private static final PENVIEW_OFFSET_TRANSLATION_Y:F = 0.243f

.field private static final TAG:Ljava/lang/String; = "SpenBrushPenTypeLayout"

.field public static final VIEW_MODE_ITEM:I = 0x1

.field public static final VIEW_MODE_LIST:I = 0x2


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

.field private mCurrentColor:I

.field private mCurrentPen:Ljava/lang/String;

.field private final mEllipseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mExAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsSelected:Z

.field private final mModeChangeClickListener:Landroid/view/View$OnClickListener;

.field private mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

.field private mOpener:Landroid/widget/ImageButton;

.field private mOpenerGroup:Landroid/widget/FrameLayout;

.field private mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

.field private mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

.field private mSpaceAniBg:Landroid/view/View;

.field private mSpaceGroup:Landroid/view/View;

.field private mToOpenerDrawableId:I

.field private mToOpenerStringId:I

.field private mTotal:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private mTransitionSet:Landroid/transition/TransitionSet;

.field private mUtilColor:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionListener:Landroid/transition/Transition$TransitionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mModeChangeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mExAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mEllipseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mIsSelected:Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_brush_pen_type_layout_v2:I

    invoke-virtual {p2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTotal:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mUtilColor:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTotal:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->initView(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTotal:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->changeMode(IZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setUnselectedPen(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->toggleMode(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mToOpenerDrawableId:I

    return p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mToOpenerStringId:I

    return p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updateOpenerResource(II)V

    return-void
.end method

.method private changeMode(IZ)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->changeModeWithoutAnimation(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->changeModeWithAnimation(I)V

    :goto_0
    return-void
.end method

.method private changeModeWithAnimation(I)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    :goto_0
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeModeWithAni() mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStartToEndId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPenItemGroup.getId()= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPenList.getId()= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenBrushPenTypeLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const-wide/16 v2, 0x1c2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    if-ne p1, v1, :cond_2

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    const-wide/16 v8, 0x15e

    invoke-virtual {v7, v8, v9}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mEllipseAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2, v6, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenAnimation(Ljava/lang/String;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    const-wide/16 v8, 0x96

    invoke-virtual {v7, v8, v9}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v7, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mExAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenAnimation(Ljava/lang/String;ZLandroid/view/animation/Animation$AnimationListener;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTotal:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updateOpenerDrawable(IZ)V

    return-void
.end method

.method private changeModeWithoutAnimation(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updateOpenerDrawable(IZ)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 5

    sget v0, Lcom/samsung/android/spen/R$id;->menu_pen1:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->enablePenMask(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setFixedContentDescription(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/spen/R$id;->pen_list_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$dimen;->drawing_brush_setting_penlist_padding_bottom_tablet:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    sget v0, Lcom/samsung/android/spen/R$id;->item_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_brush_settings:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/samsung/android/spen/R$id;->space_group:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mModeChangeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget p1, Lcom/samsung/android/spen/R$id;->brush_opener_group:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    sget p1, Lcom/samsung/android/spen/R$id;->opener:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mModeChangeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/samsung/android/spen/R$id;->space_bg:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    new-instance p2, Landroid/transition/ChangeBounds;

    invoke-direct {p2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    const/16 p2, 0xc

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {p1, p2, v2}, Landroid/transition/TransitionSet;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    return-void
.end method

.method private setUnselectedPen(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->enablePenMask(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setUnselectedPen()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setUnselectedPen()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->enablePenMask(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startOpenerAnimation(II)V
    .locals 7

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mToOpenerDrawableId:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mToOpenerStringId:I

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/16 p2, 0xb

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private toggleMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenTypeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updateView(I)V

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->changeMode(IZ)V

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    return-void
.end method

.method private updateOpenerDrawable(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateOpenerDrawable() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenTypeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    sget v0, Lcom/samsung/android/spen/R$drawable;->brush_open:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_show_brushes:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v2, :cond_2

    sget v0, Lcom/samsung/android/spen/R$drawable;->brush_close:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_1

    sget v0, Lcom/samsung/android/spen/R$drawable;->brush_close:I

    :cond_1
    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_hide_brushes:I

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->startOpenerAnimation(II)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updateOpenerResource(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateOpenerResource(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePenItem()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->getBrushPenViewInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentColor:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setPenInfo(Ljava/lang/String;IIFZ)Z

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenStringId()I

    move-result v9

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenResourceId()I

    move-result v10

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenMaskResourceId()I

    move-result v11

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenMaskStrokeResourceId()I

    move-result v12

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setPenResourceInfo(Ljava/lang/String;IIII)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getUpperWeight()F

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getMaskWeight()F

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getBottomWeight()F

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setMaskPosition(FFF)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentColor:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mUtilColor:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setPenColor(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->enablePenMask(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updatePenList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentColor:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenInfo(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mIsSelected:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setUnselectedPen(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTransitionSet:Landroid/transition/TransitionSet;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mUtilColor:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mUtilColor:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilColor;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpener:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mOpenerGroup:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceGroup:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTotal:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public getPenCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->getPenCount()I

    move-result v0

    return v0
.end method

.method public getSelectedPenPosition()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->getSelectedPenPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updateOpenerDrawable(IZ)V

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

    return-void
.end method

.method public setExpandToSelectPen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setExpandToSelectPen(Z)V

    :cond_0
    return-void
.end method

.method public setPenDegree(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenDegree() degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenTypeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenItemGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setRotationX(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setRotationX(F)V

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setUnselectedPen()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mIsSelected:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentPen:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentColor:I

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updatePenItem()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updatePenList()Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updatePenList()Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->updatePenItem()V

    :goto_0
    return v0
.end method

.method public setPenLayoutRatio(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenLayoutRatio(FF)V

    return-void
.end method

.method public setPenList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setScrollBar(Z)V

    return-void
.end method

.method public setPenList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setScrollBar(Z)V

    return-void
.end method

.method public setRoundedBackground(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$color;->setting_brush_pen_type_space_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mSpaceAniBg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->getRoundedCornerDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mTotal:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    sget v1, Lcom/samsung/android/spen/R$id;->layout_bg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->setRoundedCornerBackground(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method public setUnselectedPen()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mCurrentColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mIsSelected:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setUnselectedPen(I)V

    :goto_0
    return-void
.end method

.method public setViewMode(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->setViewMode(IZ)Z

    move-result p1

    return p1
.end method

.method public setViewMode(IZ)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mViewMode:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->toggleMode(Z)V

    :cond_1
    return p1
.end method

.method public setViewModeChangeListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    return-void
.end method

.method public smoothScrollTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->mPenList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->smoothScrollTo(I)V

    return-void
.end method
