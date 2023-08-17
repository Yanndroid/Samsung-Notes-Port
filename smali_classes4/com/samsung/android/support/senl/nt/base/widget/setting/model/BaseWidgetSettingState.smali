.class public Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseWidgetSettingState"


# instance fields
.field public mBackgroundColor:I

.field public mDarkMode:I

.field public mOldBackgroundColor:I

.field public mOldDarkMode:I

.field public mOldTransparency:I

.field public mTheme:I

.field public mTransparency:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    return v0
.end method

.method public getDarkMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    return v0
.end method

.method public getOldBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldBackgroundColor:I

    return v0
.end method

.method public getOldDarkMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldDarkMode:I

    return v0
.end method

.method public getOldTransparency()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldTransparency:I

    return v0
.end method

.method public getReverseTransparency()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    rsub-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public getTheme()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTheme:I

    return v0
.end method

.method public getTransparency()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    return v0
.end method

.method public init(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
    .locals 0

    if-eqz p4, :cond_0

    const-string p2, "TRANSPARENCY"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    const-string p2, "WIDGET_BACKGROUNDCOLOR"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    const-string p2, "OLDTRANSPARENCY"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldTransparency:I

    const-string p2, "WIDGET_OLD_BACKGROUNDCOLOR"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldBackgroundColor:I

    const-string p2, "DARKMODE"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    const-string p2, "OLD_DARKMODE"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldDarkMode:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->initTheme(Landroid/app/Activity;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getTransparency(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getBackgroundColor(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldBackgroundColor:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldTransparency:I

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getDarkMode(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldDarkMode:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public initTheme(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->getReverseTransparency()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getCurrentBackgroundColor(Landroid/content/Context;II)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->checkTheme(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTheme:I

    return-void
.end method

.method public isChanged()Z
    .locals 8

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldTransparency:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldBackgroundColor:I

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget v4, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    iget v5, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldDarkMode:I

    if-eq v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChanged. Transparency="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BaseWidgetSettingState"

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChanged. BackgroundColor="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChanged. DarkMode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    return v2
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    return-void
.end method

.method public setDarkMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTheme:I

    return-void
.end method

.method public setTransparency(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    return-void
.end method
