.class public Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final KEY_POSITION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCurPosition:I

.field private mFolderUuid:Ljava/lang/String;

.field private final mPageContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

.field private mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

.field private mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

.field private mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mToolType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "ComposerFTUActivity"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->TAG:Ljava/lang/String;

    const-string v0, "key_position"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->KEY_POSITION:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mCurPosition:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mToolType:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPageContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mCurPosition:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    return-object p0
.end method

.method private finishActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mToolType:I

    const-string v2, "tool_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mFolderUuid:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mCurPosition:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->finishActivity()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->updateBottomLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->initPager()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->initSystemUi()V

    return-void
.end method

.method private initPager()V
    .locals 6

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->ftu_viewpager:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->ftu_bottom_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPageContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->setPageContract(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/ftu/common/CustomScroller;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/senl/nt/app/ftu/common/CustomScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLayout# : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerFTUActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private initSystemUi()V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->ftu_background_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setWindowBackgroundColor(Landroid/view/Window;I)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setStatusBarColor(Landroid/app/Activity;I)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarTheme(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private isFirstPage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLastPage()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onPressNextButton()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->isLastPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->setComposerFTUUsed()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->finishActivity()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method private updateBottomLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->isFirstPage()Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->isLastPage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->updateLayout(ZZ)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    const-string v0, "ComposerFTUActivity"

    const-string v1, "onBackPressed# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->isFirstPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->pager_next_button:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->onPressNextButton()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->pager_back_button:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected viewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComposerFTUActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ComposerFTUActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ComposerFTUActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "onCreate() - isTabletLayout false. finish."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->finishActivity()V

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->composer_ftu_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string v0, "category_id"

    const/4 v1, 0x1

    const-string v2, "tool_type"

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const-string v4, "key_position"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mCurPosition:I

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mToolType:I

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mToolType:I

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mFolderUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->initLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->updateBottomLayout()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->registerFTUNeedStateChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/constants/FTUConstants;->unregisterFTUNeedStateChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "ComposerFTUActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerAdapter:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mCurPosition:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPagerAdapter;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPager:Lcom/samsung/android/support/senl/nt/base/winset/view/AbsViewPager;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mCurPosition:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mPagerBottomLayout:Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mCurPosition:I

    const-string v1, "key_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mToolType:I

    const-string v1, "tool_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUActivity;->mFolderUuid:Ljava/lang/String;

    const-string v1, "category_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
