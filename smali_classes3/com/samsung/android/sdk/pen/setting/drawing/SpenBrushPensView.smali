.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;


# static fields
.field private static final ANI_CONTRACT_ALPHA_DURATION:I = 0x64

.field private static final ANI_CONTRACT_TRANS_DURATION:I = 0x1c2

.field private static final ANI_EXPAND_ALPHA_DURATION:I = 0xc8

.field private static final ANI_EXPAND_MOVE_DURATION:I = 0x1c2

.field private static final ANI_PEN_CHANGE_DURATION:I = 0x12c

.field private static final GUIDE_TYPE_MARGIN:I = 0x1

.field private static final GUIDE_TYPE_NONE:I = 0x0

.field private static final GUIDE_TYPE_PERCENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenBrushPensView"


# instance fields
.field private final MAX_BRUSH_COUNT_WITHOUT_SCROLL_DEFAULT:I

.field private mAniTargetIdx:I

.field private mAnimateView:Landroid/view/View;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mChainStyle:I

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEndGuidePercent:F

.field private mExpended:Z

.field private mGuideType:I

.field private mLayoutPercentHeight:F

.field private mLayoutPercentWidth:F

.field private mOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

.field private final mPenClickListener:Landroid/view/View$OnClickListener;

.field private final mPenViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mSelectedGuideId:I

.field private mSelectedGuideValue:F

.field private mSelectedIndex:I

.field private mSpacePercent:F

.field private mStartGuidePercent:F

.field private mSupportScrollPenCount:I

.field private final mTransitionListener:Landroid/transition/Transition$TransitionListener;

.field private mUnSelectedGuideId:I

.field private mUnselectedGuideValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x9

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->MAX_BRUSH_COUNT_WITHOUT_SCROLL_DEFAULT:I

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mPenClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$5;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mPenViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$6;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mTransitionListener:Landroid/transition/Transition$TransitionListener;

    const-string p2, "SpenBrushPensView"

    invoke-static {p2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->updateSelectedPenView(IZZ)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAniTargetIdx:I

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mExpended:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimateView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimateView:Landroid/view/View;

    return-object p1
.end method

.method private addChild(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calculatorOffset()I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    move v1, v2

    :cond_1
    iget v2, v3, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget v0, v3, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :cond_3
    return v2
.end method

.method private getItemDimensionRatio(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentWidth:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentHeight:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentWidth:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentHeight:F

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItemDimensionRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPensView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLayoutVisibleAreaWidth()I
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private getSpaceWidthPercent(Landroid/view/View;)F
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSpacePercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mEndGuidePercent:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mStartGuidePercent:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSupportScrollPenCount:I

    int-to-float v2, v1

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float p1, v1

    div-float/2addr v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpaceWidthPercent: spacePercent= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpenBrushPensView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private init()V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChainStyle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mGuideType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideId:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnSelectedGuideId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideValue:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnselectedGuideValue:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    const/16 v3, 0x9

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSupportScrollPenCount:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentWidth:F

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentHeight:F

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSpacePercent:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mStartGuidePercent:F

    sget v1, Lcom/samsung/android/spen/R$id;->pen_list_start:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mStartGuidePercent:F

    :cond_0
    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mEndGuidePercent:F

    sget v1, Lcom/samsung/android/spen/R$id;->pen_list_end:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_1

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mEndGuidePercent:F

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mExpended:Z

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAniTargetIdx:I

    return-void
.end method

.method private setContractAnimation()V
    .locals 15

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getLayoutVisibleAreaWidth()I

    move-result v6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->calculatorOffset()I

    move-result v7

    move v8, v2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenView(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v7, v11

    goto :goto_2

    :cond_2
    add-int v11, v7, v6

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    sub-int/2addr v11, v12

    :goto_2
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    int-to-float v11, v11

    invoke-direct {v12, v3, v11, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v13, 0x1c2

    invoke-virtual {v12, v13, v14}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v12, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget v11, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAniTargetIdx:I

    if-eq v11, v8, :cond_3

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v13, 0x64

    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v11, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    new-instance v11, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$3;

    invoke-direct {v11, p0, v10}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$3;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;Landroid/view/View;)V

    invoke-virtual {v12, v11}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v10, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setExpandAnimation()V
    .locals 15

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getLayoutVisibleAreaWidth()I

    move-result v6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->calculatorOffset()I

    move-result v7

    move v8, v2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenCount()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenView(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    goto/16 :goto_5

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int v11, v10, v11

    if-ltz v11, :cond_2

    :goto_2
    move v11, v2

    goto :goto_3

    :cond_2
    move v11, v5

    goto :goto_3

    :cond_3
    add-int v10, v7, v6

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v10

    if-gtz v11, :cond_2

    goto :goto_2

    :goto_3
    if-nez v11, :cond_4

    goto :goto_5

    :cond_4
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v10

    invoke-direct {v12, v10, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v13, 0x1c2

    invoke-virtual {v12, v13, v14}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v12, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v12, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget v10, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAniTargetIdx:I

    if-eq v10, v8, :cond_5

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v13, 0xc8

    invoke-virtual {v10, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    new-instance v10, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;

    invoke-direct {v10, p0, v9}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$4;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;Landroid/view/View;)V

    invoke-virtual {v12, v10}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private setPenAutoAnimation(Landroid/view/ViewGroup;)V
    .locals 6

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mTransitionListener:Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method private updateChildList()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BEFORE] updatechildList() mChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenBrushPensView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroidx/constraintlayout/widget/Guideline;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroid/widget/Space;

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->addChild(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSelected(Landroid/view/View;ZZ)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mGuideType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v1, 0x3

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideId:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnSelectedGuideId:I

    :goto_0
    invoke-virtual {v0, p2, v1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    if-eqz p3, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setPenAutoAnimation(Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method private updateSelectedPenView(IZZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->updateSelected(Landroid/view/View;ZZ)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimateView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mPenViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimateView:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public getPenCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPenView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectPenIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3. onFinishInflate() childCont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPensView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->updateChildList()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;)V

    const-wide/16 p3, 0xa

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public selectPen(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->updateSelectedPenView(IZZ)V

    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->updateSelectedPenView(IZZ)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    :cond_0
    return-void
.end method

.method public setBetweenPenMarginPercent(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSpacePercent:F

    return-void
.end method

.method public setLayoutRatio(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentWidth:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentHeight:F

    return-void
.end method

.method public setMarginGuideInfo(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mStartGuidePercent:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mEndGuidePercent:F

    return-void
.end method

.method public setOnItemClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mPenClickListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPenAnimation(IZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAniTargetIdx:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimateView:Landroid/view/View;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimateView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mExpended:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mPenViewGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "++++++ onGlobalLayout() already Registered. targetIdx="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expended="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenBrushPensView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setExpandAnimation()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setContractAnimation()V

    :goto_1
    return-void
.end method

.method public setPenList(II)V
    .locals 13

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SpenBrushPensView"

    const-string v2, " setPenList()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-array v10, p1, [I

    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    move v3, v11

    :goto_0
    if-ge v3, p1, :cond_3

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v1, p2, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    if-nez v4, :cond_1

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getItemDimensionRatio(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    :cond_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    aput v5, v10, v3

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->addChild(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mGuideType:I

    if-eqz p2, :cond_10

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnSelectedGuideId:I

    invoke-virtual {p2, v1, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideId:I

    invoke-virtual {p2, v1, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->create(II)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mGuideType:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnSelectedGuideId:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnselectedGuideValue:F

    float-to-int v3, v3

    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideId:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideValue:F

    float-to-int v3, v3

    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnSelectedGuideId:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnselectedGuideValue:F

    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideId:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideValue:F

    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    :goto_1
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSupportScrollPenCount:I

    if-le p1, v1, :cond_c

    sget v1, Lcom/samsung/android/spen/R$id;->pen_list_start:I

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    sget v1, Lcom/samsung/android/spen/R$id;->pen_list_end:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getSpaceWidthPercent(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideValue:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentHeight:F

    mul-float/2addr v2, v4

    const v4, 0x47c35000    # 100000.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v0, v5

    new-array v9, v0, [I

    move v5, v11

    :goto_2
    add-int/lit8 v6, p1, 0x1

    if-ge v5, v6, :cond_9

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    new-instance v7, Landroid/widget/Space;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/Space;->setId(I)V

    new-instance v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v5, :cond_6

    iget v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mStartGuidePercent:F

    goto :goto_3

    :cond_6
    if-ne v5, p1, :cond_7

    iget v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mEndGuidePercent:F

    sub-float v7, v3, v7

    goto :goto_3

    :cond_7
    move v7, v1

    :goto_3
    iget v8, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mLayoutPercentWidth:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v4

    float-to-int v7, v7

    int-to-float v7, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "W,"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setDimensionRatio(ILjava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideValue:F

    invoke-virtual {p2, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7, v11, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    mul-int/lit8 v7, v5, 0x2

    aput v6, v9, v7

    if-ne v5, p1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    aget v6, v10, v5

    aput v6, v9, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    move v1, v11

    :goto_5
    if-ge v1, v0, :cond_e

    if-nez v1, :cond_a

    aget v4, v9, v1

    const/4 v5, 0x6

    sget v6, Lcom/samsung/android/spen/R$id;->pen_list_start:I

    const/4 v7, 0x6

    goto :goto_6

    :cond_a
    aget v4, v9, v1

    const/4 v5, 0x6

    add-int/lit8 v2, v1, -0x1

    aget v6, v9, v2

    const/4 v7, 0x7

    :goto_6
    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_b

    aget v4, v9, v1

    const/4 v5, 0x7

    sget v6, Lcom/samsung/android/spen/R$id;->pen_list_end:I

    const/4 v7, 0x7

    goto :goto_7

    :cond_b
    aget v4, v9, v1

    const/4 v5, 0x7

    add-int/lit8 v2, v1, 0x1

    aget v6, v9, v2

    const/4 v7, 0x6

    :goto_7
    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    if-le p1, v0, :cond_d

    sget v3, Lcom/samsung/android/spen/R$id;->pen_list_start:I

    const/4 v4, 0x6

    sget v5, Lcom/samsung/android/spen/R$id;->pen_list_end:I

    const/4 v6, 0x7

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChainStyle:I

    move-object v2, p2

    move-object v7, v10

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChainRtl(IIII[I[FI)V

    goto :goto_8

    :cond_d
    aget v4, v10, v11

    const/4 v5, 0x6

    sget v6, Lcom/samsung/android/spen/R$id;->pen_list_start:I

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    aget v4, v10, v11

    const/4 v5, 0x7

    sget v6, Lcom/samsung/android/spen/R$id;->pen_list_end:I

    const/4 v7, 0x7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    :cond_e
    :goto_8
    if-ge v11, p1, :cond_f

    aget v0, v10, v11

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnSelectedGuideId:I

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_10
    return-void
.end method

.method public setPenViewChainStyle(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChainStyle:I

    :cond_1
    return-void
.end method

.method public setSelectedGuideInfo(IFIF)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mGuideType:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideId:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedGuideValue:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnSelectedGuideId:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mUnselectedGuideValue:F

    return-void
.end method

.method public setSupportScrollPenCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSupportScrollPenCount:I

    return-void
.end method

.method public unSelectPen(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->updateSelectedPenView(IZZ)V

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->mSelectedIndex:I

    :cond_0
    return-void
.end method
