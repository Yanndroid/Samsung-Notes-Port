.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$Contract;
    }
.end annotation


# static fields
.field private static final ALL_SIDE_POSITION_NONE:F = -1.0f

.field private static final PREF_KEY_TOOLBAR_DOCK_SIDE:Ljava/lang/String; = "all_side_toolbar_dock_type"

.field private static final PREF_KEY_TOOLBAR_ROTATE:Ljava/lang/String; = "toolbar_rotate"

.field private static final PREF_KEY_TOOLBAR_SAVE_X:Ljava/lang/String; = "all_side_toolbar_save_x"

.field private static final PREF_KEY_TOOLBAR_SAVE_Y:Ljava/lang/String; = "all_side_toolbar_save_y"

.field private static final SAFE_CONTAIN_THRESHOLD_RATIO:F = 0.07f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$Contract;

.field private mDockSide:I

.field private mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

.field private final mLocation:[I

.field private mOrientation:I

.field private mRotate:Z

.field private final mTouch:Landroid/graphics/PointF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AllSideToolbarContainerLayout"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->initialize()V

    return-void
.end method

.method private checkBottomBoundaryInFloating(Landroid/graphics/Point;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_1
    :goto_0
    return-void
.end method

.method private checkExactPosition()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->isSafeFromOutBorder()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "Floater is located almost outside of border, clear save position to avoid edge case"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->clearSavePosition()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getEnabledDocking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->mInitialPositionX:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->mInitialPositionY:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateDockState(FF)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updatePosition(FF)V

    :goto_0
    return-void
.end method

.method private dismissGuideTip()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->dismiss()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->dismiss()V

    return-void
.end method

.method private getDisplayCutoutInset()Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->mIsMultiWindowMode:Z

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getGlobalVisibleRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getGlobalVisibleRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getGlobalVisibleRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getGlobalVisibleRect(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private getDockerInset()I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getDisplayCutoutInset()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDockerInset# inset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setDockerInsetSize(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setDockerInsetSize(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setDockerInsetSize(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->setDockerInsetSize(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockerInsetSize()I

    move-result v0

    return v0
.end method

.method private getEndDockingArea()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->getEndDockingArea(F)F

    move-result v0

    return v0
.end method

.method private getStartDockingArea()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->getStartDockingArea(F)F

    move-result v0

    return v0
.end method

.method private initialize()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_container_end_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setEndEdgeSize(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setStartMargin(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_container_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setDefaultCornerRadius(F)V

    const-string v0, "all_side_toolbar_save_x"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->pref_key_toolbar_x:Ljava/lang/String;

    const-string v0, "all_side_toolbar_save_y"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->pref_key_toolbar_y:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->mInitialPositionX:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->mInitialPositionY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->float_layout_horizontal_docking_area:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->float_layout_horizontal_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingLTR;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingLTR;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;-><init>(FF)V

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getStoredRatio()Landroid/util/Pair;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->enableDocking(I)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isHorizontalDock(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isSafeFromOutBorder()Z
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/ToolbarUtil;->getIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v0, v1

    const v1, 0x3d8f5c29    # 0.07f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isVerticalDock(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private runRotateVI(IFF)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;FFI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateContainerContentsGravity(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v4

    move v4, v3

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateContainerLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingType()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getDockerInset()I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContainerLayout# dockingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " insetSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateContainerSize(II)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateContainerContentsGravity(I)V

    return-void
.end method

.method private updateContainerSize(II)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move p2, v1

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result p1

    add-int/2addr p2, p1

    move v3, v0

    move v0, p2

    move p2, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getDockingSize()I

    move-result p1

    add-int/2addr p2, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateCurrentTouch(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private updateGuideTip()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->update()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->update()V

    return-void
.end method

.method private updateOpenDocker()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->isInStartDockingArea(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->openDocker(I)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->isInEndDockingArea(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getTopDockingArea()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getBottomDockingArea()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->closeAllDocker()V

    :goto_1
    return-void
.end method


# virtual methods
.method public actionFly(FFLjava/lang/Runnable;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v3, p1, v2

    add-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getCenterHorizontal()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getCenterVertical()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v7, v7

    invoke-interface {v6, v1, v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->isStartDockingArea(FF)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getStartDockingPosition()F

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->runRotateVI(IFF)V

    return-void

    :cond_0
    move v2, v0

    move v3, v5

    :goto_0
    move v6, v8

    goto/16 :goto_1

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget v10, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v10, v10

    invoke-interface {v6, v1, v10}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->isEndDockingArea(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getEndDockingPosition()F

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->runRotateVI(IFF)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getTopDockingArea()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingPosition()F

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v7, v9, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->runRotateVI(IFF)V

    return-void

    :cond_3
    move v3, v0

    move v2, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingPosition()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingPosition()F

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v8, v9, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->runRotateVI(IFF)V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    add-float/2addr v1, v2

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fly to drop zone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    move v3, v1

    move v6, v7

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->fly(Landroid/view/View;FFFFZLjava/lang/Runnable;)V

    return-void
.end method

.method public adjustPositionToInside()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public changeDockTypeParam()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->isVerticalDock(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->isHorizontalDock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->savePosition(FF)V

    return-void
.end method

.method public clearSavePosition()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->clearSavePosition()V

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "all_side_toolbar_dock_type"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    const-string v1, "toolbar_rotate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public dispatchLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->dispatchLongPress(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->adjustPositionToInside()V

    return-void
.end method

.method public dropVerticalDocking(ZI)V
    .locals 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getStartDockingPosition()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getEndDockingPosition()F

    move-result v0

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropVerticalDocking# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mEnableDocking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->reboundOnDropZone(FFZI)V

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->onDocking(IZ)V

    return-void
.end method

.method public dropX(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingSide()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->closeAllDocker()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->hideDockOthers(I)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->isVerticalDock(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->dropVerticalDocking(ZI)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dropY(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingSide()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->isBlockaded(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->isHorizontalDock(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dropHorizontalDocking(ZI)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public getBottomDockingArea()F
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingSize()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getChildName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDockingBoundary()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->isStartDockingArea(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->isEndDockingArea(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getTopDockingArea()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->getBottomDockingArea()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public getEndDockingPosition()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->getEndDockingPosition(F)F

    move-result v0

    return v0
.end method

.method public getStartDockingPosition()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mHorizontalDocking:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;->getStartDockingPosition(F)F

    move-result v0

    return v0
.end method

.method public getStoredRatio()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "toolbar_rotate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    const-string v1, "all_side_toolbar_dock_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getStoredRatio()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getTopDockingArea()F
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingArea()F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getUndockDestination([FLandroid/view/MotionEvent;)V
    .locals 5
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    aget v3, v0, v1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    aget v4, v4, v1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    aget v4, v4, v3

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStart:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, v0, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mInit:Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    aput v0, p1, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    aput p2, p1, v3

    return-void
.end method

.method public hasStoredRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateGuideTip()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->dismissGuideTip()V

    return-void
.end method

.method public onDocking(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onDocking(IZ)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string p2, "onDocking# "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateContainerLayout()V

    return-void
.end method

.method public onFieldSizeChanged()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->showOnValidCount(Landroid/view/View;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->showOnValidCount(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateContainerLayout()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->onFieldSizeChanged()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mLocation:[I

    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateGuideTip()V

    :cond_0
    return-void
.end method

.method public onReloadItemOrderLayout()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$Contract;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$Contract;->onReloadItemOrderLayout()V

    :cond_0
    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateCurrentTouch(Landroid/graphics/PointF;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onTouchDown(Landroid/graphics/PointF;)V

    return-void
.end method

.method public onTouchMove(Landroid/graphics/PointF;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateCurrentTouch(Landroid/graphics/PointF;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onTouchMove(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public relayoutPosition()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateDockingAlignment()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->restorePosition()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->checkExactPosition()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relayoutPosition# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updatePosition(FF)V

    :cond_5
    :goto_1
    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    return-void
.end method

.method public savePosition(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->savePosition(FF)V

    const-string p1, "Composer"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mRotate:Z

    const-string v0, "toolbar_rotate"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingType()I

    move-result p2

    const-string v0, "all_side_toolbar_dock_type"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout$Contract;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->dismiss()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateDockState(FF)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->isInitialPosition(FF)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return p2

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->isVerticalDock(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->dropVerticalDocking(ZI)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dropHorizontalDocking(ZI)V

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->mDockSide:I

    const/4 p1, 0x1

    return p1
.end method

.method public updateDockingAlignment()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->updateDockingAlignment()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_container_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setDockParams(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;)V

    return-void
.end method

.method public updatePosition(FF)V
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getDefaultPosition(FFLandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->checkBottomBoundaryInFloating(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updatePositionByParentHeight(FII)V
    .locals 0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string p2, "updatePositionByParentHeight - nothing to do in AllSideToolbarContainer"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateState()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->relayoutPosition()V

    return-void
.end method

.method public updateXY(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->updateOpenDocker()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
