.class public Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetToolbarSettingView"


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppName:Landroid/widget/TextView;

.field private mBackground:Landroid/widget/ImageView;

.field private mBrush:Landroid/widget/ImageView;

.field private mImage:Landroid/widget/ImageView;

.field private mListBackground:Landroid/widget/ImageView;

.field private mPen:Landroid/widget/ImageView;

.field private mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;

.field private mPreview:Landroid/widget/RelativeLayout;

.field private mText:Landroid/widget/ImageView;

.field private mVoice:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private initImageResource()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mAppIcon:Landroid/widget/ImageView;

    const v1, 0x7f080443

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mText:Landroid/widget/ImageView;

    const v1, 0x7f080444

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPen:Landroid/widget/ImageView;

    const v1, 0x7f080441

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mBrush:Landroid/widget/ImageView;

    const v1, 0x7f080440

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f080442

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mVoice:Landroid/widget/ImageView;

    const v1, 0x7f080445

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initPreview()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00da

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a08bb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mAppName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120571

    goto :goto_0

    :cond_0
    const v2, 0x7f120061

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0459

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mListBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a08d2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mAppIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a08ba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mText:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0903

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPen:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a08c1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mBrush:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a08c6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0902

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mVoice:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->initImageResource()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->updateWidgetBackground()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->updateWidgetSettingDarkMode()V

    return-void
.end method

.method private initWidgetPreviewContainer()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isFoldSettingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    const v1, 0x7f0a08f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070aac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    const v1, 0x7f0a08f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isFoldSettingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ac4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ac1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ac3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ac0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0d02fe

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPreview:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private updateWidgetBackground()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    const v1, 0x7f0a08e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a9a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    const v2, 0x7f0a08e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateRoundCornerViewHeight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;

    return-object v0
.end method

.method public bridge synthetic getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->getPresenter()Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->init()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->initWidgetPreviewContainer()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->initPreview()V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;

    return-void
.end method

.method public updateWidgetBackgroundColor()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isBlackBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06063e

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06063f

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWidgetBackgroundColor# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetToolbarSettingView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mBackground:Landroid/widget/ImageView;

    const v2, 0x7f080752

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateBackgroundColor(Landroid/widget/ImageView;II)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isBlackBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06060f

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060610

    :goto_1
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mListBackground:Landroid/widget/ImageView;

    const v2, 0x7f080737

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateBackgroundColor(Landroid/widget/ImageView;II)V

    return-void
.end method

.method public updateWidgetPreview()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isDarkTheme()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWidgetPreview. darkTheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetToolbarSettingView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060642

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060643

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mText:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mPen:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mBrush:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mVoice:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mAppName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public updateWidgetPreviewAlpha(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWidgetPreviewAlpha. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetToolbarSettingView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mListBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->mListBackground:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateWidgetPreviewTheme()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->updateWidgetPreview()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->updateWidgetBackgroundColor()V

    return-void
.end method

.method public updateWidgetSettingDarkMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->menuEnableUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->updateWidgetPreview()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->updateWidgetBackgroundColor()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPreviewAlpha()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetToolbarSettingView;->updateWidgetPreviewAlpha(I)V

    return-void
.end method
