.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContainer:Landroid/view/View;

.field private mGuideLayout:Landroid/view/View;

.field private mSupportAOPMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Guide"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mContainer:Landroid/view/View;

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;)V

    return-void
.end method


# virtual methods
.method public init(IZ)V
    .locals 3

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mSupportAOPMode:Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->screenoff_guide_layout:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mContainer:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mContainer:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_layout_supported_AOP:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mSupportAOPMode:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mContainer:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_layout_not_supported_AOP:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isJapaneseLanguage()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "sec-roboto-light"

    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mSupportAOPMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_tips_supported_AOP_write_memo_on_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_tips_supported_AOP_xxx:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_tips_not_supported_AOP_write_memo_on_screen:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onConfigurationChanged(IZ)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->onDestroy()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mSupportAOPMode:Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->init(IZ)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->updateVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVisibility# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/guide/Guide;->mGuideLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
