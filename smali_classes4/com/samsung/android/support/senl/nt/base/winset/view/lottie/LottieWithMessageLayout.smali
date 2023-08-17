.class public abstract Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LottieWithMessageLayout"


# instance fields
.field public mDefaultLottieHeight:F

.field public mDefaultLottieWidth:F

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mLottieContainer:Landroid/widget/FrameLayout;

.field public mLottieHeightRatio:F

.field public mLottieWidthRatio:F

.field private mMessageInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMessageTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public mMessageTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private animateMessageView(Landroid/widget/TextView;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateMessageView# show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LottieWithMessageLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->showDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->showDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->cancelTextAnimation()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->initTextAnimations()V

    return-void
.end method

.method private cancelTextAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->tag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->cancelTextViewAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelTextViewAnimation(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private getMessageView(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)Landroid/widget/TextView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$layout;->lottie_msg_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget v0, p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->stringRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    iget-boolean p2, p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->isLeftSideOfLottie:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x6

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->initialize()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$layout;->lottie_with_message_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/samsung/android/support/senl/nt/base/R$id;->lottie_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private initTextAnimations()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageInfos:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->initTextViewAnimation(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initTextViewAnimation(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getMessageView(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->animateMessageView(Landroid/widget/TextView;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLottieContainer(FF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-lez v1, :cond_4

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getLottieWidthRatio()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieHeight()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieWidth()F

    move-result v1

    div-float/2addr v0, v1

    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getLottieHeightRatio()F

    move-result p1

    mul-float v0, p2, p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieWidth()F

    move-result p1

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieHeight()F

    move-result p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getLottieHeightRatio()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieWidth()F

    move-result p2

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieHeight()F

    move-result v1

    div-float/2addr p2, v1

    cmpg-float v1, p1, p2

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getLottieWidthRatio()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieHeight()F

    move-result p2

    mul-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getDefaultLottieWidth()F

    move-result v0

    div-float v0, p2, v0

    goto :goto_0

    :cond_2
    move p1, p2

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateMessageView(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->getMessageView(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMessageViews()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageInfos:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->updateMessageView(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addMessageInfo(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageInfos:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageInfos:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageInfos:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelLottieAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method public abstract getDefaultLottieHeight()F
.end method

.method public abstract getDefaultLottieWidth()F
.end method

.method public abstract getLottieHeightRatio()F
.end method

.method public abstract getLottieWidthRatio()F
.end method

.method public abstract initialize()V
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    sub-int/2addr p3, p5

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->updateLottieContainer(FF)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->updateMessageViews()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageTextSize:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mDefaultLottieWidth:F

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    float-to-int v3, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure# idx :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " textSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LottieWithMessageLayout"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->updateMessageViews()V

    return-void
.end method

.method public playLottieAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public setLottieAnimation(Ljava/lang/String;I)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->lottie:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
