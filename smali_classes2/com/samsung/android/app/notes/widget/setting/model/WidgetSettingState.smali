.class public Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetSettingState"


# instance fields
.field private mOldUUID:Ljava/lang/String;

.field private mReserveColor:Z

.field private mUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;-><init>()V

    return-void
.end method


# virtual methods
.method public getOldUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mOldUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getReverseColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mReserveColor:Z

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;
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

    const-string p2, "UUID"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    const-string p2, "OLDTRANSPARENCY"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldTransparency:I

    const-string p2, "OLDUUID"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mOldUUID:Ljava/lang/String;

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

    const-string p2, "REVERSE_COLOR"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mReserveColor:Z

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->initTheme(Landroid/app/Activity;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getTransparency(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getBackgroundColor(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldBackgroundColor:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mOldUUID:Ljava/lang/String;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldTransparency:I

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->isReverseTransparency(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mReserveColor:Z

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getDarkMode(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldDarkMode:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "note_none"

    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mOldUUID:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mOldUUID:Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method public bridge synthetic init(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->init(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    move-result-object p1

    return-object p1
.end method

.method public isChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mOldUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChanged. UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WidgetSettingState"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isOnlyUUIDChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mOldUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldTransparency:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mTransparency:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mBackgroundColor:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldBackgroundColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mDarkMode:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->mOldDarkMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTransparency(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->setTransparency(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mReserveColor:Z

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->mUUID:Ljava/lang/String;

    return-void
.end method
