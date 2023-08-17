.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;
.super Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/StyleOfNewNotesPage;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PageTemplateLayout"


# instance fields
.field private mCurrentPage:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

.field private mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/StyleOfNewNotesPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mCurrentPage:I

    return-void
.end method

.method private initLayout()V
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->comp_template_view_pager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;->setPagingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mCurrentPage:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->comp_template_tab_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->comp_template_tab_layout_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/listener/OffsetUpdateListener;->setVerticalView(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->appbar_layout:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private initPageTemplateView()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->setContract(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView$Contract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onAttachView(Z)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_template_style:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inflateLayout(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_template_style_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public initialize(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string v0, "key_current_page"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mCurrentPage:I

    goto :goto_1

    :cond_0
    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "settings_template_type"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/constants/TemplateViewType;->isPdfType(I)Z

    move-result p1

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->initPageTemplateView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->initLayout()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x459

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->isCanNotApplyPdfTemplate(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->handleActivityResult(IILandroid/content/Intent;Z)V

    return-void
.end method

.method public onBackKeyDown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->onCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged()V
    .locals 2

    const-string v0, "PageTemplateLayout"

    const-string v1, "onConfigurationChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->onConfigurationChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->release()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->handlePermissionRequestResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;->onResume(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mCurrentPage:I

    const-string v1, "key_current_page"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mTemplateStyleView:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/TemplateStyleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public updatePagerHeight()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/view/pager/page/TemplateStyleLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
