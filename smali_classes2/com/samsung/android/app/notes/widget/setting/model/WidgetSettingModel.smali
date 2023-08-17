.class public Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetSettingModel"


# instance fields
.field private mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;-><init>(I)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;-><init>()V

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->init(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    return-void
.end method


# virtual methods
.method public getOldUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->getOldUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->isChanged()Z

    move-result v0

    return v0
.end method

.method public isOnlyUUIDChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->isOnlyUUIDChanged()Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WidgetSettingModel"

    const-string v1, "onSaveInstanceState# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getTransparency()I

    move-result v0

    const-string v1, "TRANSPARENCY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getOldTransparency()I

    move-result v0

    const-string v1, "OLDTRANSPARENCY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->getOldUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLDUUID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getBackgroundColor()I

    move-result v0

    const-string v1, "WIDGET_BACKGROUNDCOLOR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getOldBackgroundColor()I

    move-result v0

    const-string v1, "WIDGET_OLD_BACKGROUNDCOLOR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getDarkMode()I

    move-result v0

    const-string v1, "DARKMODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getOldDarkMode()I

    move-result v0

    const-string v1, "OLD_DARKMODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->getReverseColor()Z

    move-result v0

    const-string v1, "REVERSE_COLOR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingModel;->mWidgetSettingState:Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetSettingState;->setUUID(Ljava/lang/String;)V

    return-void
.end method
