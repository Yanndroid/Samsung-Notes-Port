.class public Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingContract;


# static fields
.field public static final TAG:Ljava/lang/String; = "WidgetSettingView"


# instance fields
.field private mDarkPreviewBitmap:Landroid/graphics/Bitmap;

.field private mEmptyView:Landroid/view/View;

.field private mIsShowNoteWidget:Z

.field private mNormalPreviewBitmap:Landroid/graphics/Bitmap;

.field private mNoteTitleView:Landroid/widget/TextView;

.field private mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

.field private mPreview:Landroid/view/View;

.field private mPreviewBackgroundView:Landroid/widget/ImageView;

.field private mPreviewManager:Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;

.field private mPreviewOptionSettingView:Landroid/view/View;

.field private mPreviewOptionVoiceView:Landroid/view/View;

.field private mPreviewSettingView:Landroid/widget/ImageView;

.field private mPreviewTitle:Landroid/widget/TextView;

.field private mPreviewTitleContainer:Landroid/view/View;

.field private mPreviewVoiceView:Landroid/view/View;

.field private mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;)Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    return-object p0
.end method

.method private initChange()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_setting_control_change_note:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_control_menu_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_change_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNoteTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getRecommendTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateNoteTitleView(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_change_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView$1;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method

.method private initPreviewChild()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mProgressView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewBackgroundView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_title_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitleContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_voice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionVoiceView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionSettingView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitle:Landroid/widget/TextView;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_voice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewVoiceView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "note_none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->hideLoadingView()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateWidgetBackgroundColor()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->initPreviewSetting()V

    return-void
.end method

.method private initPreviewSetting()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_ic_setting:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSupportSettingByQuickOption()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionSettingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionSettingView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private isDarkEmptyBackground()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getDarkMode()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getCurrentBackgroundColor(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getReverseTransparency()I

    move-result v3

    invoke-static {v1, v3, v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->checkTheme(Landroid/content/Context;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private updateOptionBackground(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_option_dark_background:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_option_white_background:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionSettingView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionVoiceView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateShowNoteTileVoice(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewVoiceView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionVoiceView:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewVoiceView:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewOptionVoiceView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    return-object v0
.end method

.method public hideEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->init()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getWidgetId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->isProviderWidget(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isFoldSettingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetPreviewLayoutManager;-><init>(Landroid/content/res/Resources;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetPreviewLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetPreviewLayoutManager;-><init>(Landroid/content/res/Resources;Z)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewManager:Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewManager:Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;->initPreview(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->initPreviewChild()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updatePreviewTitleView(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->initChange()V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateBgSettingMenu()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_background_color_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getPageColor()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->isBackgroundImage()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isWidgetBgDarkThemeColor(Landroid/content/Context;IZZ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBgColorRadioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->radio_white:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_item_height:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mBgColorRadioGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getBackgroundColor()I

    move-result v2

    if-ne v2, v4, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->radio_white:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->radio_black:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_bg_color_overlay:I

    goto :goto_0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_background_color_round_overlay:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateRoundCornerViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method public updateEmptyPreview()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->isDarkEmptyBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateWidgetBackgroundColor()V

    return-void
.end method

.method public updateNoteTitleView(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNoteTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->base_string_no_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNoteTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updatePreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNormalPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNormalPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNormalPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mDarkPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mDarkPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mDarkPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNormalPreviewBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mDarkPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateWidgetSettingDarkMode()V

    return-void
.end method

.method public updatePreviewTitleView(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitle:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitleContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateTitleVoice(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitleContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitleContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewVoiceView:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateShowNoteTileVoice(Z)V

    :goto_1
    return-void
.end method

.method public updateWidgetBackgroundColor()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewBackgroundView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_background_white:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_short_background_white:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getPageColor()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->isBackgroundImage()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isBlackBackground()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetBgThemeColor(Landroid/content/Context;IZZ)I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isBlackBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color_black:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color:I

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWidgetBackgroundColor#. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetSettingView"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public updateWidgetPreviewAlpha(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWidgetPreviewAlpha# alpha : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetSettingView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateWidgetPreviewTheme()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "WidgetSettingView"

    if-nez v0, :cond_0

    const-string/jumbo v0, "updateWidgetPreviewTheme# empty view"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateEmptyPreview()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getCurrentTheme()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWidgetPreviewTheme# theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mIsShowNoteWidget:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreview:Landroid/view/View;

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_setting_icon:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ne v0, v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    if-nez v0, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateOptionBackground(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getPageColor()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v6}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->isBackgroundImage()Z

    move-result v6

    if-nez v0, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    invoke-static {v2, v5, v6, v7}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isWidgetTitleDarkThemeColor(Landroid/content/Context;IZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    :goto_3
    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->getColor(Landroid/content/Context;I)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPreviewTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getPageColor()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v6}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->isBackgroundImage()Z

    move-result v6

    if-nez v0, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v2, v5, v6, v3}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isWidgetBgDarkThemeColor(Landroid/content/Context;IZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mDarkPreviewBitmap:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->mNormalPreviewBitmap:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateWidgetBackgroundColor()V

    return-void
.end method

.method public updateWidgetSettingDarkMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->menuEnableUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateWidgetPreviewTheme()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPreviewAlpha()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetSettingView;->updateWidgetPreviewAlpha(I)V

    return-void
.end method
