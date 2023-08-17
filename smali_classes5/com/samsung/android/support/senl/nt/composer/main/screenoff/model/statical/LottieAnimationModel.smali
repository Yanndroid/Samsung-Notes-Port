.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PEN_DETACH_EFFECT:Ljava/lang/String; = "screenoff_pen_detach_effect.json"

.field private static final PEN_HOVER_RIPPLE_EFFECT:Ljava/lang/String; = "screenoff_pen_hover_ripple_effect.json"

.field private static final TAG:Ljava/lang/String;

.field private static mPenDetachAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private static mPenHoverAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private static mPreInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LottieAnimationModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPreInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPenDetachAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenDetachAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method public static getPenHoverAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenHoverAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPreInitialized:Z

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->initPenDetachAnimationView(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->initPenHoverAnimationView(Landroid/content/Context;)V

    return-void
.end method

.method private static initPenDetachAnimationView(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->TAG:Ljava/lang/String;

    const-string v1, "initPenDetachAnimationView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenDetachAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p0, "screenoff_pen_detach_effect.json"

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenDetachAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x3faf5c29    # 1.37f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    return-void
.end method

.method private static initPenHoverAnimationView(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->TAG:Ljava/lang/String;

    const-string v1, "initPenHoverAnimationView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenHoverAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p0, "screenoff_pen_hover_ripple_effect.json"

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public static isPreInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPreInitialized:Z

    return v0
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPreInitialized:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenDetachAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenDetachAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenHoverAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/LottieAnimationModel;->mPenHoverAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_1
    return-void
.end method
