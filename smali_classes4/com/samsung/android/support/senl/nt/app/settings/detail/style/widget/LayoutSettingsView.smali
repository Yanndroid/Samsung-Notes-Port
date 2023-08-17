.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;
.super Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHorizontalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

.field private mLayoutContainer:Landroid/widget/LinearLayout;

.field private mLongRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

.field private mNormalRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

.field private mScrollDirectionContainer:Landroid/widget/LinearLayout;

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mTwoPageRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

.field private mVerticalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->updatePageScrollStyle()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->updatePageSize()V

    return-void
.end method

.method private initLayout()V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->normal_radio_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mNormalRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->long_radio_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mLongRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_vertical_scroll_radio_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mVerticalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_horizontal_scroll_radio_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mHorizontalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_two_page_radio_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mTwoPageRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mNormalRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mLongRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mVerticalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mHorizontalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mTwoPageRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isFoldableModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mTwoPageRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mTwoPageRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mNormalRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_page_setting_ic_page_ratio_portrait:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mLongRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->comp_page_setting_ic_page_ratio_long:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setImageResource(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_layout_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mLayoutContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_scroll_direction_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mScrollDirectionContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private updatePageScrollStyle()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mVerticalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mHorizontalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mTwoPageRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_page_scroll_direction"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v2, "settings_page_layout_column"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mVerticalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mHorizontalScrollRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mTwoPageRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updatePageSize()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mNormalRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mLongRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_page_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mNormalRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mLongRadioButton:Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/ImageViewRadioButton;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->layout_settings_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->initLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->updatePageSize()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->updatePageScrollStyle()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->normal_radio_button:I

    const-string v1, "settings_page_size"

    const/4 v2, 0x0

    const-string v3, "Settings"

    if-ne p1, v0, :cond_0

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->long_radio_button:I

    const/4 v4, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_vertical_scroll_radio_button:I

    const-string v1, "settings_page_layout_column"

    const-string v5, "settings_page_scroll_direction"

    if-ne p1, v0, :cond_2

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_horizontal_scroll_radio_button:I

    if-ne p1, v0, :cond_3

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->layout_settings_two_page_radio_button:I

    if-ne p1, v0, :cond_4

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;->updateButtonWidth(Landroid/widget/LinearLayout;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/LayoutSettingsView;->mScrollDirectionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ImageViewRadioButtonContainer;->updateButtonWidth(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method
