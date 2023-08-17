.class public Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetToolbarSettingModel"


# instance fields
.field private mWidgetSettingState:Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;


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

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;-><init>()V

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;->init(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;->mWidgetSettingState:Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    return-void
.end method


# virtual methods
.method public getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;->mWidgetSettingState:Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WidgetToolbarSettingModel"

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

    return-void
.end method
