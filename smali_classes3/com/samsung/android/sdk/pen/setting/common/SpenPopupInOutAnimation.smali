.class public Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPopupInOutAnimation"


# instance fields
.field private final mHideAnimation:Landroid/view/animation/Animation$AnimationListener;

.field private mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mHideAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowAnimation:Landroid/view/animation/Animation$AnimationListener;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimation:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimation:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->initAnimation()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p1
.end method

.method private createAlphaAnimation(FFJ)Landroid/view/animation/AlphaAnimation;
    .locals 1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-object v0
.end method

.method private createScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;
    .locals 10

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, 0x1

    invoke-virtual {v9, p1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    return-object v9
.end method

.method private initAnimation()V
    .locals 10

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimation:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x96

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->createAlphaAnimation(FFJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    const v6, 0x3f733333    # 0.95f

    const-wide/16 v7, 0xfa

    invoke-direct {p0, v6, v3, v7, v8}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->createScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimation:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->createAlphaAnimation(FFJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->createScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SpenPopupInOutAnimation"

    const-string v1, " cancelAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenPopupInOutAnimation"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationSet:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideAnimation() listener is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NOT NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPopupInOutAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->initAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public showAnimation(Landroid/view/animation/Animation$AnimationListener;)Z
    .locals 2

    const-string v0, "SpenPopupInOutAnimation"

    const-string/jumbo v1, "showAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->initAnimation()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
