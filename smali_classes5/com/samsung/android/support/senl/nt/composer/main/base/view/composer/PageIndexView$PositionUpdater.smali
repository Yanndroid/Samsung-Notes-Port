.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PositionUpdater"
.end annotation


# instance fields
.field public mInitialized:Z

.field public mRangeEnd:F

.field public mRangeStart:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public adjustBoundary(F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mRangeStart:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/PageIndexView$PositionUpdater;->mRangeEnd:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public checkInitialized(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract setUpdatePosition(Landroid/view/View;II)V
.end method

.method public abstract updateVariablePosition(Landroid/view/View;)V
.end method
