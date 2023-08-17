.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;
.source "SourceFile"


# static fields
.field private static final PREF_KEY_TOOLBAR_DOCK_SIDE:Ljava/lang/String; = "toolbar_dock_type"

.field public static final PREF_KEY_TOOLBAR_X:Ljava/lang/String; = "toolbar_pos_x"

.field public static final PREF_KEY_TOOLBAR_Y:Ljava/lang/String; = "toolbar_pos_y"

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBottomDockDisabled:Z

.field private mBottomDockDisabledPosX:F

.field private mBottomDockDisabledPosY:F

.field private mIntroVI:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

.field private mOrientation:I

.field private mSavedDockSide:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ToolbarContainerLayout"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$attr;->floatingToolbarTheme:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)F
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingPosition()F

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)F
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingPosition()F

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->updateState()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;FFLjava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->actionFly(FFLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;Landroid/graphics/Point;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->runTranslationAnimation(Landroid/graphics/Point;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsReleased:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mIsReleased:Z

    return p0
.end method

.method public static synthetic access$701(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->restorePosition()V

    return-void
.end method

.method private getDefaultDockType()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->isDefaultTop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getDockingByPosition(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingArea()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingArea()F

    move-result v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mIntroVI:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getDefaultDockType()I

    move-result v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;-><init>(Landroid/view/View;ILcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mIntroVI:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mIntroVI:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    return-object v0
.end method

.method private introVI()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v2, "introVI# is not supported"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "introVI# is running"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getStoredRatio()Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isInitialPosition(FF)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->start()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private isDefaultTop()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateRatio(FF)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    div-float/2addr p2, v0

    mul-float/2addr p2, p1

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public blockadeDock(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->blockadeDock(IZ)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    :cond_0
    return-void
.end method

.method public clearSavePosition()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "clearSavePosition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->clearSavePosition()V

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "toolbar_dock_type"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->remove(Ljava/lang/String;)V

    return-void
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
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getDockingByPosition(F)I

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

    const-string v1, "toolbar_dock_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStoredRatio# savedDockSide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getStoredRatio()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->init(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_container_end_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setEndEdgeSize(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setStartMargin(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_container_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setDefaultCornerRadius(F)V

    const-string p1, "toolbar_pos_x"

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->pref_key_toolbar_x:Ljava/lang/String;

    const-string p1, "toolbar_pos_y"

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->pref_key_toolbar_y:Ljava/lang/String;

    const/high16 p1, -0x3d380000    # -100.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->mInitialPositionX:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->mInitialPositionY:F

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getStoredRatio()Landroid/util/Pair;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->enableDocking(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->update()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->update()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->onShow()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->setKeyboardShown()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->cancel()V

    :cond_0
    return-void
.end method

.method public relayoutPosition()V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "relayoutPosition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v2, "first relayout"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->updateDockingAlignment()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->restorePosition()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

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

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v3, v2

    cmpl-float v3, v3, v1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    int-to-float v4, v3

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_6

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_4

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->blockadeDock(IZ)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onUndocking(F)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    cmpl-float v5, v4, v2

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->blockadeDock(IZ)V

    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabled:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    float-to-int v4, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->updatePositionByParentHeight(FII)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->updateRatio(FF)V

    :cond_7
    :goto_1
    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->updateDockingAlignment()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->updateState()V

    return-void
.end method

.method public restorePosition()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "restorePosition"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->introVI()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->restorePosition()V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->show(Landroid/view/View;)V

    return-void
.end method

.method public savePosition()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getStoredRatio()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->isInitialPosition(FF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->saveCurrentPosition()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->isInitialPosition(FF)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "disable IntroVI cause toolbar has been moved"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public savePosition(FF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->savePosition(FF)V

    const-string p1, "Composer"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getDockingType()I

    move-result p2

    const-string v0, "toolbar_dock_type"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePosition# currentDockingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMoving(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setMoving(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosX:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mBottomDockDisabledPosY:F

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateDockState(FF)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDockState# xRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  yRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->isInitialPosition(FF)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getDefaultDockType()I

    move-result p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDockState# defaultDockType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    if-eq v0, v1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDockState# savedDockSide : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->mSavedDockSide:I

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getDefaultPosition(FFLandroid/graphics/Point;)V

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getDockingByPosition(F)I

    move-result p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDockState# getDockingByPosition : y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dockType "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 p2, 0x0

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->dropHorizontalDocking(ZI)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return p2
.end method

.method public updateDockingAlignment()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->updateDockingAlignment()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;-><init>()V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_container_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;->dockingSize:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setDockParams(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IDock$AlignmentParam;)V

    return-void
.end method

.method public updatePosition(FF)V
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->getDefaultPosition(FFLandroid/graphics/Point;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getEndEdgeSize()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getEndEdgeSize()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mStartMargin:F

    sub-float/2addr v2, v3

    :cond_0
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v3

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    int-to-float v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    int-to-float v1, v3

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le v1, v3, :cond_4

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_4
    if-gez v1, :cond_5

    iput v2, v0, Landroid/graphics/Point;->y:I

    :cond_5
    :goto_2
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restorePosition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateXY(FF)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mBottomMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mParentHeight:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p2, v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getTopDockingArea()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->getBottomDockingArea()F

    move-result v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout;->openDocker(I)Z

    goto :goto_1

    :cond_1
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->mDelegate:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->closeAllDocker()V

    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method
