.class Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "note_uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "note_uuid_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "WidgetListSettingActivity"

    invoke-static {v2, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;->access$000(Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    if-eqz p2, :cond_1

    const-string p2, "action_widget_list_setting_update"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;->access$100(Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;->access$200(Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateNoteListPreview()V

    goto :goto_0

    :cond_0
    const-string p2, "action_widget_list_setting_delete"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;->access$300(Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;)Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->deleteUUIDNoteList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
