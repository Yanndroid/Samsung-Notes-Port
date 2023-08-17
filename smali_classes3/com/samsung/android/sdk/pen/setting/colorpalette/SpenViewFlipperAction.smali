.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;
    }
.end annotation


# static fields
.field private static final ANI_IN:I = 0x0

.field private static final ANI_MAX:I = 0x2

.field private static final ANI_OUT:I = 0x1

.field public static final FLIP_DIR_LEFT_RIGHT:I = 0x0

.field public static final FLIP_DIR_UP_DOWN:I = 0x1

.field private static final SWIPE_DIR_BTT:I = 0x4

.field private static final SWIPE_DIR_LTR:I = 0x1

.field private static final SWIPE_DIR_MAX:I = 0x5

.field private static final SWIPE_DIR_NONE:I = 0x0

.field private static final SWIPE_DIR_RTL:I = 0x2

.field private static final SWIPE_DIR_TTB:I = 0x3

.field public static final TAG:Ljava/lang/String; = "SpenViewFlipperAction"


# instance fields
.field private downX:F

.field private downY:F

.field private final mAnimateListener:Landroid/view/animation/Animation$AnimationListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mFlipDir:I

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mInOutAnimation:[[Landroid/view/animation/Animation;

.field private mListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

.field private mRemainAnimationCount:I

.field private mTouchSlope:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ViewFlipper;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mAnimateListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mTouchSlope:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    const-class v0, Landroid/view/animation/Animation;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;->onFlipped(II)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x2
    .end array-data
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    return p0
.end method

.method public static synthetic access$008(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    return v0
.end method

.method public static synthetic access$010(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    return v0
.end method

.method private changeFlip(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BEFORE] changeFlip("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewFlipperAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->clearRemainAnimation()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 v2, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->showNext()V

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    if-lt v4, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->showPrevious()V

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    if-gez v4, :cond_3

    sub-int/2addr v0, v3

    :goto_2
    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AFTER] changeFlip("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") showNext="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " current="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    :goto_3
    invoke-interface {p1, v0, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;->onFlipped(II)V

    :cond_5
    return-void
.end method

.method private clearRemainAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearRemainAnimation() mRemainAnimationCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewFlipperAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private isDifferentAction(FFFFI)Z
    .locals 2

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    if-nez p5, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p5, p5, v0

    if-gez p5, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p5

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mTouchSlope:I

    int-to-float v0, v0

    cmpl-float p5, p5, v0

    if-lez p5, :cond_0

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Maybe Different Direction!! down["

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "] --> current["

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "] touchSlope="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mTouchSlope:I

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenViewFlipperAction"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setInOutAnimation(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v4, v3, v2

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/spen/R$anim;->brush_color_slide_in_bottom_to_top:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mAnimateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v4, v3, v2

    aget-object v4, v4, v1

    if-nez v4, :cond_9

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/spen/R$anim;->brush_color_slide_out_bottom_to_top:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v2, v3, v2

    aget-object v2, v2, v1

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v4, v3, v2

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/spen/R$anim;->brush_color_slide_in_top_to_bottom:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mAnimateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v4, v3, v2

    aget-object v4, v4, v1

    if-nez v4, :cond_9

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/spen/R$anim;->brush_color_slide_out_top_to_bottom:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v2, v3, v2

    aget-object v2, v2, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v4, v3, v2

    aget-object v4, v4, v0

    if-nez v4, :cond_5

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/spen/R$anim;->brush_color_slide_in_right_to_left:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mAnimateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v4, v3, v2

    aget-object v4, v4, v1

    if-nez v4, :cond_9

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/spen/R$anim;->brush_color_slide_out_right_to_left:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v2, v3, v2

    aget-object v2, v2, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v2, v1

    aget-object v3, v3, v0

    if-nez v3, :cond_7

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/spen/R$anim;->brush_color_slide_in_left_to_right:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mAnimateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v2, v1

    aget-object v3, v3, v1

    if-nez v3, :cond_9

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/spen/R$anim;->brush_color_slide_out_left_to_right:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v2, v2, v1

    aget-object v2, v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mAnimateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v2, v0

    aget-object v3, v3, v0

    if-nez v3, :cond_9

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/spen/R$anim;->spen_color_slide_none:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v2, v0

    aget-object v2, v2, v0

    aget-object v2, v2, v0

    aput-object v2, v3, v1

    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v3, v3, p1

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object p1, v2, p1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public changeFlip(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") --> changePos("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewFlipperAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setInOutAnimation(I)V

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    if-le p2, p1, :cond_1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onRightSwipe(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onLeftSwipe(Z)V

    goto :goto_1

    :cond_4
    if-ge p2, p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onDownSwipe(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onUpSwipe(Z)V

    :goto_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p2, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[AFTER] changeFlip() movePosition="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    if-eqz p1, :cond_6

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;->onFlipped(II)V

    :cond_6
    return-void
.end method

.method public close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipper:Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mRemainAnimationCount:I

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mInOutAnimation:[[Landroid/view/animation/Animation;

    aget-object v4, v4, v2

    aput-object v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public moveBackward(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setInOutAnimation(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->changeFlip(Z)V

    return-void
.end method

.method public moveForward(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setInOutAnimation(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->changeFlip(Z)V

    return-void
.end method

.method public onDownSwipe(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownSwipe mFlipDir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewFlipperAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setInOutAnimation(I)V

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->changeFlip(Z)V

    :cond_1
    return-void
.end method

.method public onLeftSwipe(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLeftSwipe mFlipDir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewFlipperAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setInOutAnimation(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->changeFlip(Z)V

    :cond_1
    return-void
.end method

.method public onRightSwipe(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRightSwipe mFlipDir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewFlipperAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setInOutAnimation(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->changeFlip(Z)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downY:F

    :cond_1
    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downX:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->isDifferentAction(FFFFI)Z

    move-result p2

    if-eqz p2, :cond_3

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downX:F

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downY:F

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v0, p2

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downX:F

    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downY:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p2, p2, v4

    const-string v4, " long, need at least "

    const-string v5, "SpenViewFlipperAction"

    if-lez p2, :cond_7

    const-string p2, "FlipperAction Swipe = Horizontal"

    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mTouchSlope:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    cmpl-float p2, p1, v3

    if-lez p2, :cond_5

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onRightSwipe(Z)V

    return v1

    :cond_5
    cmpg-float p1, p1, v3

    if-gez p1, :cond_9

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onLeftSwipe(Z)V

    return v1

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Horizontal Swipe was only "

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mTouchSlope:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    const-string p2, "FlipperAction Swipe = Vertical"

    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mTouchSlope:I

    int-to-float v6, v6

    cmpl-float p2, p2, v6

    if-lez p2, :cond_a

    cmpg-float p1, v0, v3

    if-gez p1, :cond_8

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onDownSwipe(Z)V

    return v1

    :cond_8
    cmpl-float p1, v0, v3

    if-lez p1, :cond_9

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->onUpSwipe(Z)V

    :cond_9
    return v1

    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vertical Swipe was only "

    goto :goto_0

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->downY:F

    return v1
.end method

.method public onUpSwipe(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpSwipe mFlipDir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenViewFlipperAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mFlipDir:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->setInOutAnimation(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->changeFlip(Z)V

    :cond_1
    return-void
.end method

.method public resetPosition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mCurrentIndex:I

    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction;->mListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipperAction$ViewFlipperActionListener;

    return-void
.end method
