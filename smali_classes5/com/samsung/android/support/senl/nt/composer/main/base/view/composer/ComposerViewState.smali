.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;
    }
.end annotation


# instance fields
.field private mIsOnTextOnlyMode:Z

.field private mIsTwoPageView:Z

.field private mIsVertical:Z

.field private mLastPageIndex:I

.field private mPanX:F

.field private mPanY:F

.field private mSpenComposerType:I

.field private final mStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRatio:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mLastPageIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsVertical:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsTwoPageView:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mStateChangeListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStateChangeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getComposerMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mSpenComposerType:I

    return v0
.end method

.method public getLastPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mLastPageIndex:I

    return v0
.end method

.method public getPanX()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mPanX:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mPanY:F

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mZoomRatio:F

    return v0
.end method

.method public isOnTextOnlyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsOnTextOnlyMode:Z

    return v0
.end method

.method public isTwoPageView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsTwoPageView:Z

    return v0
.end method

.method public isVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsVertical:Z

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setComposerMode(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mSpenComposerType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mSpenComposerType:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;

    invoke-interface {v2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;->onComposerModeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsOnTextOnlyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsOnTextOnlyMode:Z

    return-void
.end method

.method public setLastPageIndex(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mLastPageIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mLastPageIndex:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;

    invoke-interface {v2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;->onPageIndexChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPanXY(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mPanX:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mPanY:F

    return-void
.end method

.method public setTwoPageView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsTwoPageView:Z

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mIsVertical:Z

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mZoomRatio:F

    return-void
.end method

.method public updatePageCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState$StateChangeListener;->onPageCountChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
