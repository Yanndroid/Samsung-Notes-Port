.class public Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetListSettingModel"


# instance fields
.field private final mCurrentDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetSettingState:Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;


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

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mWidgetSettingState:Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getNoteUuidList(I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mOriginalNoteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mCurrentDisplayList:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string p2, "CURRENT_NOTE_LIST"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    :cond_1
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

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNoteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public getWidgetSettingState()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mWidgetSettingState:Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingState;

    return-object v0
.end method

.method public isWidgetContentChanged()Z
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->isWidgetContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mOriginalNoteList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mCurrentDisplayList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WidgetListSettingModel"

    const-string v1, "onSaveInstanceState# "

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "CURRENT_NOTE_LIST"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public removeDisplayList(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mCurrentDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public swapItem(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->updateLatestDisplayList()V

    return-void
.end method

.method public updateLatestDisplayList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mCurrentDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mCurrentDisplayList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public updateNoteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->mNoteList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method
