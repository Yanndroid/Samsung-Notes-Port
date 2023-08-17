.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushPenListLayout"


# instance fields
.field private final MAX_BRUSH_COUNT_WITHOUT_SCROLL:I

.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

.field private mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

.field private mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mDegree:I

.field private mEndGuidePercent:F

.field private mIsExpandToSelectPen:Z

.field private mItemID:I

.field private mLayoutID:I

.field private mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

.field private mParent:Landroid/widget/FrameLayout;

.field private mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

.field private mSelectPercent:F

.field private mStartGuidePercent:F

.field private mTargetPenName:Ljava/lang/String;

.field private mTransAlpha:F

.field private mUnSelectPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->MAX_BRUSH_COUNT_WITHOUT_SCROLL:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mIsExpandToSelectPen:Z

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_brush_pen_list_tablet:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLayoutID:I

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_brush_pen_list_item_tablet:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mItemID:I

    const v0, 0x3de9ad43    # 0.1141f

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mSelectPercent:F

    const v0, 0x3eb7ced9    # 0.359f

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mUnSelectPercent:F

    const v0, 0x3d70068e    # 0.0586f

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mStartGuidePercent:F

    const v0, 0x3f70e560    # 0.941f

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mEndGuidePercent:F

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x9

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->MAX_BRUSH_COUNT_WITHOUT_SCROLL:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mIsExpandToSelectPen:Z

    sget p2, Lcom/samsung/android/spen/R$layout;->setting_brush_pen_list_v2:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLayoutID:I

    sget p2, Lcom/samsung/android/spen/R$layout;->setting_brush_pen_list_item:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mItemID:I

    const p2, 0x3ddb22d1    # 0.107f

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mSelectPercent:F

    const p2, 0x3eb33333    # 0.35f

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mUnSelectPercent:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mStartGuidePercent:F

    const p2, 0x3f7758e2    # 0.9662f

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mEndGuidePercent:F

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mDegree:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setAfterAnimation()V

    return-void
.end method

.method private adjustLayout(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mParent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x9

    if-gt p1, v0, :cond_1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->setLayout(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mStartGuidePercent:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mEndGuidePercent:F

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setMarginGuideInfo(FF)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mParent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mParent:Landroid/widget/FrameLayout;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLayoutID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setSupportScrollPenCount(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    sget v1, Lcom/samsung/android/spen/R$id;->pen_list_selected_guideline:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mSelectPercent:F

    sget v3, Lcom/samsung/android/spen/R$id;->pen_list_unselected_guideline:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mUnSelectPercent:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setSelectedGuideInfo(IFIF)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mItemID:I

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setOnPenClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    return-void
.end method

.method private prohibitTooltipText(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenView(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenView;->setProhibitTooltipText(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setAfterAnimation()V
    .locals 11

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mTransAlpha:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v6, v0, v10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v1, v2, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setBeforeAnimation()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBeforeAnimation() rotation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] degree[from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRotationX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushPenListLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mDegree:I

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mTransAlpha:F

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mTransAlpha:F

    mul-float/2addr v3, v1

    mul-float v11, v3, v2

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const v4, 0x3f547ae1    # 0.83f

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setPenDegreeWithAni(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mDegree:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setBeforeAnimation()V

    return-void
.end method

.method private updateChildPosition(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->isSupportScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->findPenIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->setVisibleChild(Landroid/view/View;Z)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->close()V

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mTargetPenName:Ljava/lang/String;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->isLongPressedOnLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBrushPenViewInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->hasUserBrushInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->getBrushPenViewInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPenCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenCount()I

    move-result v0

    return v0
.end method

.method public getPenDegree()F
    .locals 2

    const-string v0, "SpenBrushPenListLayout"

    const-string v1, "getPenDegree()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRotationX()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedPenCenter()Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getSelectPenIndex()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getPenView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectPosition() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBrushPenListLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSelectedPenPosition()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->getSelectPenIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedPenPosition() index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBrushPenListLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mTargetPenName:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->updateChildPosition(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mTargetPenName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

    return-void
.end method

.method public setExpandToSelectPen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mIsExpandToSelectPen:Z

    return-void
.end method

.method public setPenAnimation(Ljava/lang/String;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->findPenIndex(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mIsExpandToSelectPen:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->updateChildPosition(Ljava/lang/String;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setPenAnimation(IZLandroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method public setPenDegree(IZ)V
    .locals 5

    int-to-float v0, p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRotationX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPenDegree() degree="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRotationX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenBrushPenListLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPenDegree() isChanged="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " needAnimation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const-string p2, "++++++++++++++++++++ Need Pen Animation ++++++++++++++++"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->setPenDegreeWithAni(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotationX(F)V

    :goto_1
    return-void
.end method

.method public setPenInfo(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setPenInfo(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setUnselectedPen()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->updateChildPosition(Ljava/lang/String;Z)Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mTargetPenName:Ljava/lang/String;

    return p2
.end method

.method public setPenLayoutRatio(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;->setLayoutRatio(FF)V

    :cond_0
    return-void
.end method

.method public setPenList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->adjustLayout(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;)V

    return-void
.end method

.method public setPenList(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->adjustLayout(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushList:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPensView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setRoundedBackground(IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDrawable;->setRoundedCornerBackground(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public setScrollBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->setScrollBar(Z)V

    :cond_0
    return-void
.end method

.method public setSettingViewLongClickListener(Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mLongClickControl:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->setOnLongClickListener(Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setUnselectedPen()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mBrushControl:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setUnselectedPen()V

    return-void
.end method

.method public smoothScrollTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->isSupportScroll()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListLayout;->mScrollManager:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushScrollManager;->smoothScrollTo(I)V

    :cond_1
    :goto_0
    return-void
.end method
