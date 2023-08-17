.class public Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawerFragment"


# instance fields
.field private mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mFragmentContainerView:Landroid/view/View;

.field private mIsDragging:Z

.field private mIsFreeFormWindow:Z

.field private mMainView:Landroid/view/View;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

.field private mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mFragmentContainerView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsDragging:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsDragging:Z

    return-void
.end method

.method private updateDrawerLayout()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "DrawerFragment"

    if-eqz v0, :cond_0

    const-string v0, "updateDrawerLayout# activity is destroyed"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mFragmentContainerView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v1, v2

    const/high16 v3, 0x44f00000    # 1920.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    const v2, 0x3e6147ae    # 0.22f

    goto :goto_0

    :cond_2
    const/high16 v3, 0x44700000    # 960.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    const v2, 0x3e8bfb16    # 0.2734f

    goto :goto_0

    :cond_3
    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    const v2, 0x3eeb851f    # 0.46f

    goto :goto_0

    :cond_4
    const/high16 v3, 0x43f00000    # 480.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    const v2, 0x3f117c1c    # 0.5683f

    goto :goto_0

    :cond_5
    const v2, 0x3f581062    # 0.844f

    :goto_0
    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->drawer_fragment_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-le v1, v0, :cond_6

    move v1, v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mMainView:Landroid/view/View;

    neg-int v1, v1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mMainView:Landroid/view/View;

    :goto_1
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->setStatusBarAndNavigationBarColor(F)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->setStatusBarAndNavigationBarColor(F)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->drawer_fragment_scrim_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    return-void

    :cond_9
    :goto_3
    const-string v0, "updateDrawerLayout# not found drawerLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changedGcsEnableStatus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateGcsDoucumentMap()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->updateDrawerDisplayData()V

    return-void
.end method

.method public closeDrawer(ZJ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public initFolderDataMap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->initFolderDataMap()V

    return-void
.end method

.method public isDrawerOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFreeFormWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    return v0
.end method

.method public isRunningAnimator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged mIsFreeFormWindow# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DrawerFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->updateDrawerLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$layout;->drawer_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->navigation_drawer_background:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->drawer_list_bg_color:I

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getAntiGreenisFilteredColor(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassCastException# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DrawerFragment"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->navigation_drawer_background:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->drawer_list_bg_color:I

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getAntiGreenisFilteredColor(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->removeUpdateSettingsBadgeListener()V

    :cond_0
    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "SharedCoeditInvitation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "SharedInvitation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->release()V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->releaseDrawerFragment()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->destroySmartFilter()V

    return-void
.end method

.method public onFolderDeleteVerifySuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onFolderDeleteVerifySuccess()V

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->isExecuteType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveFolderExpandState(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onExecuteItemSelected(I)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onFolderSelected(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;->isRequireServerSyncType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->closeDrawer(ZJ)Z

    const/16 p1, 0x3f0

    const/4 v0, 0x0

    if-ne p2, p1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setCoeditHasBadge(Z)V

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->setGcsHasDrawerBadge(Z)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x3ef

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->updateDrawerLayout()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "DrawerFragment"

    const-string v0, "onViewCreated#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "onViewCreated# activity is destroyed"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->main_activity_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mMainView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_fragment_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mFragmentContainerView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_layout:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-nez v1, :cond_1

    const-string p2, "onViewCreated# not found drawerLayout"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)V

    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mIsFreeFormWindow:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mFragmentContainerView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-direct {p1, p0, v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->saveArguments(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :goto_1
    const-string p1, "APP_LAUNCH"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "SharedCoeditInvitation"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "SharedInvitation"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->registerDrawerFragmentBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IDrawerFragment;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->saveFolderExpandState(Ljava/util/Map;)V

    return-void
.end method

.method public setActivityContract(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    return-void
.end method

.method public setDrawerTitleBold(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->setDrawerTitleBold(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPostNotifyDataSetChanged()V
    .locals 0

    return-void
.end method

.method public setStatusBarAndNavigationBarColor(F)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->drawer_fragment_scrim_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_fragment_bg_color:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->setDisplayCutoutBGColor(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setStatusBarColor(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarTheme(Landroid/app/Activity;IZ)V

    :cond_1
    return-void
.end method

.method public updateDocumentCountMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->updateDocumentCountMap(Ljava/util/Map;)V

    return-void
.end method

.method public updateDrawerBar()V
    .locals 0

    return-void
.end method

.method public updateDrawerDisplayData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->updateDrawerDisplayData()V

    return-void
.end method

.method public updateNewBadge()V
    .locals 0

    return-void
.end method

.method public updateNoteViewByDrawerObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DrawerFragment"

    const-string v1, "updateNoteViewByDrawerObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->updateNoteViewByDrawerObserver()V

    return-void
.end method

.method public verifyForDelete()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->mActivityContract:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->verifyForDelete()V

    return-void
.end method
