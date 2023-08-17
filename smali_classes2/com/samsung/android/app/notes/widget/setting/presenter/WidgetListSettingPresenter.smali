.class public Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetListSettingPresenter"


# instance fields
.field private mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;

.field private mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    return-void
.end method


# virtual methods
.method public deleteUUIDNoteList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUUIDNoteList# uuidList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetListSettingPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->deleteUUIDNoteList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->isWidgetContentChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;

    invoke-interface {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;->updateNoteListPreview()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->updateLatestDisplayList()V

    :cond_0
    return-void
.end method

.method public getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    return-object v0
.end method

.method public bridge synthetic getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "WidgetListSettingPresenter"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "note_uuid_list"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->updateNoteList(Ljava/util/List;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult# "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->isWidgetContentChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;

    invoke-interface {p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;->updateNoteListPreview()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->updateLatestDisplayList()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "onActivityResult# invalid"

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotePickerClicked()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotePickerClicked# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetListSettingPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "widget.MEMO_PICK_FROM_NOTE_LIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "widget_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "widget_setting_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v2

    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "pick_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "note_uuid_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public saveAndFinish()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->isWidgetContentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getTransparency()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getBackgroundColor()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getDarkMode()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendPickNoteListBroadcast(Landroid/content/Context;IIIILjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->mContract:Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->setPresenter(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V

    return-void
.end method
