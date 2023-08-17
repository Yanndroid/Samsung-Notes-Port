.class Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetPinSettingsActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "note_uuid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->access$000(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->access$100(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "onReceive# difference uuid "

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "action_widget_setting_create_cache"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->access$200(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->showLoadingView()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->access$300(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updateNoteTitle()V

    goto :goto_0

    :cond_1
    const-string p2, "action_widget_setting_done_cache"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->access$400(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->updatePreviewAndSetting()V

    goto :goto_0

    :cond_2
    const-string p2, "action_widget_setting_cancel_cache"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;->access$500(Lcom/samsung/android/app/notes/widget/setting/WidgetPinSettingsActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetSettingPresenter;->hideLoadingView()V

    :cond_3
    :goto_0
    return-void
.end method
