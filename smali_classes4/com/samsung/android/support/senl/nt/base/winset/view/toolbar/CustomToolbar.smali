.class public Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$HorizontalGravity;
    }
.end annotation


# static fields
.field private static final ANIMATION_LONG_DURATION:I = 0xc8

.field private static final ANIMATION_SHORT_DURATION:I = 0x64

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MIN_ALPHA:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "CustomToolbar"


# instance fields
.field private mActionView:Landroidx/appcompat/widget/ActionMenuView;

.field private mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBadgeView:Landroid/view/View;

.field private mCustomViewMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mIsShowing:Z

.field private mNavigationView:Landroid/view/View;

.field private mOverflowMenuButton:Landroid/view/View;

.field private mOverflowMenuCallback:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

.field private final mRunnableOverflowMenuClickListener:Ljava/lang/Runnable;

.field private mScreenOnPopupView:Landroid/view/View;

.field private mTitleLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mTitleView:Landroid/view/View;

.field private mVisibilityChangedListener:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$VisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mRunnableOverflowMenuClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mRunnableOverflowMenuClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mRunnableOverflowMenuClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method private applyOverflowMenuClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mActionView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->action_more:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuButton:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mRunnableOverflowMenuClickListener:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mRunnableOverflowMenuClickListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroidx/appcompat/widget/ActionMenuView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mActionView:Landroidx/appcompat/widget/ActionMenuView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuButton:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuCallback:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuButton:Landroid/view/View;

    return-void
.end method

.method private getBadgeLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800033

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$dimen;->badge_start_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$dimen;->badge_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private getDefaultToolbarHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$dimen;->fragment_toolbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getOverflowMenus()Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "menu size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomToolbar"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mActionView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->applyOverflowMenuClickListener()V

    return-void
.end method

.method private hasBadge()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string v0, "CustomToolbar"

    const-string v2, "hasBadge# menu is null"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private hideAnimate()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->getDefaultToolbarHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setupHeightAnimator(II)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f666666    # 0.9f

    const/4 v4, 0x0

    const v5, 0x3f547ae1    # 0.83f

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$10;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$10;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->getOverflowMenus()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initActionMenuView()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mActionView:Landroidx/appcompat/widget/ActionMenuView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflated menu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mActionView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomToolbar"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private initHeightAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CustomToolbar"

    const-string v1, "initHeightAnimator# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private initInflateMenu(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initInflateMenu# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomToolbar"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initActionMenuView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateChildViews()V

    return-void
.end method

.method private initNavigationView()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v3, :cond_0

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mNavigationView:Landroid/view/View;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initTitleView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleView:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private initialize()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomToolbar"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateToolbarLayout()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->hideAnimate()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->showAnimate()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateScreenOnPopupView()V

    return-void
.end method

.method private releaseCustomView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private releaseNavigationView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mNavigationView:Landroid/view/View;

    return-void
.end method

.method private releaseTitle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private setHeight(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomToolbar"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private setHeightUpdateListener(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private setOverflowMenuCallback(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "CustomToolbar"

    const-string v1, "setOverflowMenuCallback# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuCallback:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

    return-void
.end method

.method private setScreenOnPopupVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x64

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;

    if-nez p1, :cond_1

    invoke-direct {v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$6;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$5;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {v1}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$8;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$7;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setToolbarVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuCallback:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;->hideOverflowMenu()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->showAnimate()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->hideAnimate()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setScreenOnPopupVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$dimen;->screenon_popup_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setHeightUpdateListener(Landroid/view/View;I)V

    return-void
.end method

.method private setupHeightAnimator(II)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initHeightAnimator()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$11;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$11;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private showAnimate()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->getDefaultToolbarHeight()I

    move-result v0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setupHeightAnimator(II)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$9;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateChild(Landroid/view/View;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iput p2, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    return-void
.end method

.method private updateChildViews()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateChildViews# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomToolbar"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mNavigationView:Landroid/view/View;

    const v1, 0x800013

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateChild(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mActionView:Landroidx/appcompat/widget/ActionMenuView;

    const v1, 0x800015

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateChild(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateChild(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateScreenOnPopupView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$dimen;->screenon_popup_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    or-int/lit8 p2, p2, 0x10

    iput p2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public enableAdjustableMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CustomToolbar"

    const-string v1, "enableAdjustableMenu# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$4;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mTitleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public hideToolbar(Z)V
    .locals 2

    const-string v0, "CustomToolbar"

    const-string v1, "hideToolbar# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setToolbarVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public inflateMenu(ILandroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initInflateMenu(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mRunnableOverflowMenuClickListener:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public inflateMenu(ILandroid/view/Menu;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initInflateMenu(I)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setOverflowMenuCallback(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->applyOverflowMenuClickListener()V

    return-void
.end method

.method public initToolbar()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initialize()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->getDefaultToolbarHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setHeight(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->getDefaultToolbarHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setHeight(I)V

    return-void
.end method

.method public postUpdateToolbarLayout()V
    .locals 2

    const-string v0, "CustomToolbar"

    const-string v1, "postUpdateToolbarLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$3;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->releaseTitle()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->releaseNavigationView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->releaseCustomView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuCallback:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater$OverflowMenu;

    return-void
.end method

.method public removeCustomView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mCustomViewMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initNavigationView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->releaseNavigationView()V

    :goto_0
    return-void
.end method

.method public setScreenOnPopupView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->initTitleView()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$TitleCallback;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$TitleCallback;->updateDone()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mVisibilityChangedListener:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$VisibilityChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$VisibilityChangedListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$VisibilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mVisibilityChangedListener:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$VisibilityChangedListener;

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuButton:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showToolbar(Z)V
    .locals 2

    const-string v0, "CustomToolbar"

    const-string v1, "showToolbar# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setToolbarVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mScreenOnPopupView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateOverflowBtnBadge()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mBadgeView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$layout;->toolbar_badge_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mBadgeView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->getBadgeLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mOverflowMenuButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mBadgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mBadgeView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateToolbarLayout()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateToolbarLayout# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomToolbar"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateScreenOnPopupView()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->mIsShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->updateChildViews()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->applyOverflowMenuClickListener()V

    return-void
.end method
