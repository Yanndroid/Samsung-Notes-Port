.class public abstract Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mWidgetId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->mWidgetId:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getDarkMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getDarkMode()I

    move-result v0

    return v0
.end method

.method public getOldBackgroundColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getOldBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getOldDarkMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getOldDarkMode()I

    move-result v0

    return v0
.end method

.method public getOldTransparency()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getOldTransparency()I

    move-result v0

    return v0
.end method

.method public getReverseTransparency()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getReverseTransparency()I

    move-result v0

    return v0
.end method

.method public getTheme()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getTheme()I

    move-result v0

    return v0
.end method

.method public getTransparency()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getTransparency()I

    move-result v0

    return v0
.end method

.method public getWidgetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->mWidgetId:I

    return v0
.end method

.method public abstract getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
.end method

.method public isWidgetContentChanged()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->isChanged()Z

    move-result v0

    return v0
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->setBackgroundColor(I)V

    return-void
.end method

.method public setDarkMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->setDarkMode(I)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->setTheme(I)V

    return-void
.end method

.method public setTransparency(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->setTransparency(I)V

    return-void
.end method
