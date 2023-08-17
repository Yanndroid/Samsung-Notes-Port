.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;
    }
.end annotation


# instance fields
.field public mColumn:I

.field public mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

.field public mFitToScreen:Z

.field public mOrientation:I

.field public mRow:I

.field public mSubDisplay:Z

.field public mVertical:Z

.field public mWindowMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mColumn:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mRow:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mFitToScreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mVertical:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mWindowMode:I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mColumn:I

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mRow:I

    return v0
.end method

.method public getWindowMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mWindowMode:I

    return v0
.end method

.method public isColumnRestrictionCase(I)Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-le p1, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isFitToScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mFitToScreen:Z

    return v0
.end method

.method public isFullWindowMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mWindowMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    return v0
.end method

.method public isTwoPage()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mColumn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTwoPageEnabled(Z)Z
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mVertical:Z

    return v0
.end method

.method public isVerticalRestrictionCase(IZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLandscapeState()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setOrientation(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mOrientation:I

    return-void
.end method

.method public setPageLayout(IIZZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isColumnRestrictionCase(I)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isVerticalRestrictionCase(IZ)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setPageLayoutColumn(I)V

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setPageLayoutRow(I)V

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setPageLayoutFitToScreen(Z)V

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setScrollVertical(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPortraitState()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setOrientation(I)V

    return-void
.end method

.method public setScrollVertical(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setScrollVertical(Z)V

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setPageLayoutFitToScreen(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setPageLayoutColumn(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    return-void
.end method

.method public setSubDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    return-void
.end method

.method public setTwoPage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setPageLayoutColumn(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    return-void
.end method

.method public setWindowMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mWindowMode:I

    return-void
.end method

.method public syncSettingData()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getPageLayoutColumn()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mColumn:I

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getPageLayoutRow()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mRow:I

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->isScrollVertical()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mVertical:Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->isPageLayoutFitToScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mFitToScreen:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageLayoutState{, mColumn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mColumn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFitToScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mFitToScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mVertical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mSubDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mWindowMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFitToScreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isVertical()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->mFitToScreen:Z

    return-void
.end method
