.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_LOG:Z = false

.field private static final HORIZONTAL_SCROLLABLE_EXIST_ITEM_ON_DOWN:I = 0x1

.field private static final HORIZONTAL_SCROLLABLE_EXIST_ITEM_ON_LEFT:I = -0x1

.field private static final HORIZONTAL_SCROLLABLE_EXIST_ITEM_ON_RIGHT:I = 0x1

.field private static final HORIZONTAL_SCROLLABLE_EXIST_ITEM_ON_UP:I = -0x1

.field public static final SCROLLABLE_DIRECTION_DOWN:I = 0x8

.field public static final SCROLLABLE_DIRECTION_LEFT:I = 0x1

.field public static final SCROLLABLE_DIRECTION_RIGHT:I = 0x2

.field public static final SCROLLABLE_DIRECTION_UP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FloaterUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static LOGD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static contains(Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contains : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->LOGD(Ljava/lang/String;)V

    return v1
.end method

.method public static getScrollDirection(Landroid/view/View;Landroid/graphics/PointF;)I
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->contains(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    const-string v2, " / "

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check horizontal scrollable direction : not contained : "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->getScrollDirectionView(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->getScrollDirection(Landroid/view/View;Landroid/graphics/PointF;)I

    move-result v6

    if-eqz v6, :cond_3

    return v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check horizontal scrollable direction : not scrollable : "

    goto :goto_0
.end method

.method private static getScrollDirectionView(Landroid/view/View;)I
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x8

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    return v1
.end method

.method public static getValidView(Ljava/lang/Class;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->contains(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-direct {v3, v4, p2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p0, p2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->getValidView(Ljava/lang/Class;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static isDownDirection(I)Z
    .locals 1

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHorizontalScrollable(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->isLeftDirection(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->isRightDirection(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLeftDirection(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRightDirection(I)Z
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUpDirection(I)Z
    .locals 1

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVerticalScrollable(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->isUpDirection(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterUtil;->isDownDirection(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
