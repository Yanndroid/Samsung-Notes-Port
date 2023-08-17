.class public Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/IHorizontalDocking;


# instance fields
.field private final mHorizontalDockingArea:F

.field private final mHorizontalDockingPosition:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->mHorizontalDockingArea:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->mHorizontalDockingPosition:F

    return-void
.end method


# virtual methods
.method public getEndDockingArea(F)F
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->mHorizontalDockingArea:F

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getEndDockingPosition(F)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getStartDockingArea(F)F
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->mHorizontalDockingArea:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    return p1
.end method

.method public getStartDockingPosition(F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->mHorizontalDockingPosition:F

    sub-float/2addr p1, v0

    return p1
.end method

.method public isEndDockingArea(FF)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->getEndDockingArea(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInEndDockingArea(FF)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->getEndDockingArea(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInStartDockingArea(FF)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->getStartDockingArea(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isStartDockingArea(FF)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/layout/HorizontalDockingRTL;->getStartDockingArea(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
