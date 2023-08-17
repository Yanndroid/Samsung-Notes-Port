.class public Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final HOVER_AREA_FACTOR_VIA_VIEW_SIZE:I = 0x6

.field private static final HOVER_AREA_RATIO_VIA_VIEW_SIZE:F = 0.16666667f

.field private static final HOVER_SCROLL_SPEED:F = 200.0f

.field private static final REGION_BOTTOM:I = 0x3

.field private static final REGION_LEFT:I = 0x0

.field private static final REGION_MAX:I = 0x4

.field private static final REGION_RIGHT:I = 0x1

.field private static final REGION_TOP:I = 0x2

.field private static final SMART_SCROLL_ICON:[I

.field private static final TAG:Ljava/lang/String; = "SmartHoverScrollHelper"

.field public static final VERTICAL:I = 0x1

.field private static sHoverScrollSpeed:I = 0x0

.field private static sIsInitialized:Z = false

.field private static sIsSamsungHoverDevice:Z = false

.field private static sMinViewSize:I

.field private static sRegionThickness:I

.field private static sResponseTime:I

.field private static sVelocity:I


# instance fields
.field public final HOVERING_SPENICON_DEFAULT:I

.field private mCurrentIconRes:I

.field private mPreviousScrollTimeMS:J

.field private mSmartScrollRegion:[Landroid/graphics/Rect;

.field private mViewSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->SMART_SCROLL_ICON:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mSmartScrollRegion:[Landroid/graphics/Rect;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mViewSize:Landroid/util/Size;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getHoveringSpenIconDefault()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->HOVERING_SPENICON_DEFAULT:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mCurrentIconRes:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mPreviousScrollTimeMS:J

    return-void
.end method

.method private canScrollable(Landroid/view/View;I)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v5, 0x2

    if-eq p2, v5, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    move p2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    sget p2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sVelocity:I

    add-int/2addr v1, p2

    sget p2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sHoverScrollSpeed:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    sget p2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sVelocity:I

    sub-int/2addr v1, p2

    sget p2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sHoverScrollSpeed:I

    neg-int p2, p2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    sget v2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sVelocity:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    sget v2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sVelocity:I

    sub-int/2addr v0, v2

    :goto_0
    move v8, v3

    move v3, p2

    move p2, v8

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mPreviousScrollTimeMS:J

    sub-long/2addr v4, v6

    if-eqz v3, :cond_5

    sget v2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sResponseTime:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    instance-of v2, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v2, :cond_4

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollTo(II)V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mPreviousScrollTimeMS:J

    :cond_5
    return v3
.end method

.method private getRegionId(II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mSmartScrollRegion:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sIsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isSemHoverDevice(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sIsSamsungHoverDevice:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize# IsSamsungHoverDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sIsSamsungHoverDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartHoverScrollHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$integer;->smart_scroll_response_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sResponseTime:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$integer;->smart_scroll_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sVelocity:I

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sHoverScrollSpeed:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$dimen;->smart_scroll_thickness:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sRegionThickness:I

    mul-int/lit8 p0, p0, 0x6

    sput p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sMinViewSize:I

    sget-object p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->SMART_SCROLL_ICON:[I

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getStylusScrollLeftType()I

    move-result v1

    aput v1, p0, v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getStylusScrollRightType()I

    move-result v0

    aput v0, p0, v2

    const/4 v0, 0x2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getStylusScrollUpType()I

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getStylusScrollDownType()I

    move-result v1

    aput v1, p0, v0

    sput-boolean v2, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sIsInitialized:Z

    return-void
.end method

.method private isValidRegion()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mSmartScrollRegion:[Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private static setHoverIcon(Landroid/view/View;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHoverIcon : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartHoverScrollHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setPointerIcon(Landroid/view/View;II)Z

    return-void
.end method

.method private updateSmartScrollRegion(II)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mViewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->isValidRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSmartScrollRegion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartHoverScrollHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sRegionThickness:I

    sget v1, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sMinViewSize:I

    const v2, 0x3e2aaaab

    if-ge p1, v1, :cond_1

    int-to-float v3, p1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    sub-int v4, p1, v3

    if-ge p2, v1, :cond_2

    int-to-float v0, p2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_2
    sub-int v1, p2, v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mSmartScrollRegion:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mSmartScrollRegion:[Landroid/graphics/Rect;

    const/4 v3, 0x1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mSmartScrollRegion:[Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v2, v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mSmartScrollRegion:[Landroid/graphics/Rect;

    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v0, v2

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->sIsSamsungHoverDevice:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isAirViewSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->updateSmartScrollRegion(II)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->getRegionId(II)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->canScrollable(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mCurrentIconRes:I

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->SMART_SCROLL_ICON:[I

    aget v4, v3, v0

    if-eq v2, v4, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    aget v1, v3, v0

    invoke-static {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->setHoverIcon(Landroid/view/View;II)V

    aget p1, v3, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mCurrentIconRes:I

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mCurrentIconRes:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->HOVERING_SPENICON_DEFAULT:I

    if-eq v0, v2, :cond_5

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->HOVERING_SPENICON_DEFAULT:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->setHoverIcon(Landroid/view/View;II)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->HOVERING_SPENICON_DEFAULT:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SmartHoverScrollHelper;->mCurrentIconRes:I

    :cond_5
    :goto_0
    return v1
.end method
