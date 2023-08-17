.class public Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/quicknote/QuickNoteFTUActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAY_SHOW_START_BUTTON:I = 0x1964

.field private static final DURATION_SHOW_START_BUTTON:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "QuickNoteFTUActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initDescription()V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->description:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->quick_note_ftu_description_jp:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->quick_note_ftu_description:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initGotItButton()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->got_it_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1964

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private initLottieView()V
    .locals 17

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "lottie_add_link_clipping_options_dark.json"

    goto :goto_0

    :cond_0
    const-string v0, "lottie_add_link_clipping_options.json"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->setAssetName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v2

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->quick_note_ftu_msg_keep_track_of_web_inspiration_easily:I

    const v5, 0x3ef5c28f    # 0.48f

    const v6, 0x3f11eb85    # 0.57f

    const v7, 0x3e19999a    # 0.15f

    const-wide/16 v8, 0x1964

    const-wide/16 v10, 0xc8

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-string v3, "quick_note_ftu_msg_keep_track_of_web_inspiration_easily"

    invoke-virtual/range {v2 .. v16}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->lottie_view:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/quicknote/view/QuickNoteFTUView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->getAssetName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->setLottieAnimation(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->getMessageInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->addMessageInfo(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->playLottieAnimation()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickNoteFTUActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->quick_note_ftu_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/quicknote/QuickNoteFTUActivity;->initLottieView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/quicknote/QuickNoteFTUActivity;->initDescription()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/quicknote/QuickNoteFTUActivity;->initGotItButton()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setImmersiveStickyModeEnable(Landroid/app/Activity;Z)V

    return-void
.end method
