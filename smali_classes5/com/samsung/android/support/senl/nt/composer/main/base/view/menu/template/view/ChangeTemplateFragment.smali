.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$ActivityContract;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChangeTemplateFragment"


# instance fields
.field private mActivityContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$ActivityContract;

.field private mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

.field private mCurrentPage:I

.field private mLayoutWidth:I

.field private mMultiWindowMode:I

.field private mPagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mLayoutWidth:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mLayoutWidth:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mCurrentPage:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mLayoutWidth:I

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public hidePdfTab()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/TemplatePagerAdapter;->hidePdfTab()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ChangeTemplateFragment"

    const-string v0, "onActivityCreated - bundle is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "key_current_page"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mCurrentPage:I

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->initialize(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onAttachView(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mMultiWindowMode:I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->handleActivityResult(IILandroid/content/Intent;Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ChangeTemplateFragment"

    const-string v1, "onConfigurationChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->setSpanCount()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mMultiWindowMode:I

    if-eq v1, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged - getMultiWindowMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") preMultiWindowMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mMultiWindowMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->scrollToPosition()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mMultiWindowMode:I

    :cond_0
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

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_template_change_tab_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->initLayout(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->release()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsItemSelected# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTemplateFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x102002c

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->onCancel()Z

    return v0
.end method

.method public onPageChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageChange to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mCurrentPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeTemplateFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mCurrentPage:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mViewPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
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

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->handlePermissionRequestResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "ChangeTemplateFragment"

    const-string v1, "onResume#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onResume(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mCurrentPage:I

    const-string v1, "key_current_page"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

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

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mChangeTemplateView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setActivityContract(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$ActivityContract;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$ActivityContract;

    return-object p0
.end method

.method public setResultFinish(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$ActivityContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateFragment$ActivityContract;->setResultFinish(ILandroid/content/Intent;)V

    return-void
.end method
