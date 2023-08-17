.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStatePhone;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;)V

    return-void
.end method


# virtual methods
.method public setLandscapeState()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setLandscapeState()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    return-void
.end method

.method public setPortraitState()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setPortraitState()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isTwoPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mColumn:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->updateFitToScreen()V

    return-void
.end method
