.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStateFold;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;)V

    return-void
.end method

.method private isColumnRestrictionWindowMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isFullWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isColumnRestrictionCase(I)Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStateFold;->isColumnRestrictionWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-le p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isTwoPageEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isTwoPageEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setFoldLandscapeState()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    return-void
.end method

.method public setFoldPortraitState()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mColumn:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->updateFitToScreen()V

    return-void
.end method

.method public setLandscapeState()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setLandscapeState()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStateFold;->setFoldLandscapeState()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    :goto_0
    return-void
.end method

.method public setPortraitState()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setPortraitState()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isFullWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStateFold;->setFoldPortraitState()V

    :goto_1
    return-void
.end method
