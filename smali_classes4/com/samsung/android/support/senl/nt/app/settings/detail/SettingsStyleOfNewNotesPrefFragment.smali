.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;


# static fields
.field private static final KEY_CURRENT_PAGE:Ljava/lang/String; = "key_current_style_of_new_notes_page"

.field private static final TAG:Ljava/lang/String; = "SettingsStyleOfNewNotesPrefFragment"


# instance fields
.field private mCurrentPage:I

.field private final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_page_style_and_template_first_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->onBackKeyDown(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->updateTabLayout()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->updateViewPagerHeight()V

    return-void
.end method

.method private initPagerAdapter(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    return-void
.end method

.method private initTabLayout(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->note_style_and_template_tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->note_style_and_template_tab:I

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v3, v4, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->tab_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v4, v3, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initViewPager(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->note_style_and_template_viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;->setPagingEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private onBackKeyDown(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->createPage(Landroid/content/Context;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/StyleOfNewNotesPage;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/StyleOfNewNotesPage;->onBackKeyDown()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateTabLayout()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->tab_layout_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/util/ResourceUtils;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    mul-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getMarginForFlexibleSpacing(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    iget-object v4, v3, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->tab_text:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Roboto_Medium"

    goto :goto_1

    :cond_2
    const-string v3, "Roboto_Regular"

    :goto_1
    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FontUtils;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateViewPagerHeight()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_3
    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onActivityResult(IIILandroid/content/Intent;)V

    return-void
.end method

.method public onBackKeyDown()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->onBackKeyDown(I)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onConfigurationChanged()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->updateViewPagerHeight()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->updateTabLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p3, "Settings"

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_style_of_new_notes_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onOptionsItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onRequestPermissionsResult(II[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    const-string v1, "key_current_style_of_new_notes_page"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "key_current_style_of_new_notes_page"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->switch_preference_fragment_container:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/component/SwitchPreferenceFragment;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$xml;->settings_adjust_in_dark_mode_switch_preference:I

    const-string v4, "settings_page_color_adjust_in_dark_mode"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/component/SwitchPreferenceFragment;-><init>(ILjava/lang/String;)V

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/component/SwitchPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated# mCurrentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsStyleOfNewNotesPrefFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->initPagerAdapter(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->initViewPager(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->initTabLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->updateViewPagerHeight()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->updateTabLayout()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_current_style_of_new_notes_page"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mCurrentPage:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/StyleOfNewNotesPagerAdapter;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method
