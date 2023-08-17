.class public Lcom/samsung/android/app/notes/widget/WidgetListProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetListProvider"

.field private static mPreviousEventTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private deleteOldWidgetBackupData(Landroid/appwidget/AppWidgetManager;I)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Old_WidgetId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "New_WidgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldWidgetBackupData# oldWidgetID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ newWidgetID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " appWidgetId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WidgetListProvider"

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/util/WidgetBRHelper;->deleteWidgetInfoWithoutUuid(I)V

    :cond_1
    return-void
.end method

.method private deleteUuidWidget(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, v0, v3

    invoke-static {v4}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getNoteUuidList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->removeAllNoteUuidList(I)V

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateEmptyWidgetView(Landroid/content/Context;I)V

    goto :goto_2

    :cond_2
    invoke-static {v4, v5}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveNoteUuidList(ILjava/util/List;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    const-string v6, "deleteUuidWidget"

    invoke-direct {p0, v5, v4, v6}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private doneNotePicker(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "appWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->isNotListWidget(Landroid/content/Context;I)Z

    move-result v1

    const-string v2, "WidgetListProvider"

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doneNotePicker# failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "note_uuid_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveNoteUuidList(ILjava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "donePicker# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->removeAllNoteUuidList(I)V

    const-string v1, "donePicker# empty"

    :goto_1
    invoke-static {v2, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->saveWidgetBackground(Landroid/content/Intent;I)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    const-string v1, "donePicker"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    return-void
.end method

.method private getLayoutId(Landroid/content/Context;I)I
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_list_init_phone_portrait_layout:I

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_list_init_phone:I

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_list_init:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getWidgetLayoutId(Landroid/content/Context;IIII)I

    move-result p1

    return p1
.end method

.method private isNotListWidget(Landroid/content/Context;I)Z
    .locals 5

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    if-ne v4, p2, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method private notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppWidgetViewDataChanged# widgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WidgetListProvider"

    invoke-static {v0, p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_view:I

    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    return-void
.end method

.method private openSelectedNote(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->prepareContract()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    move-result-object v0

    const-string v1, "WidgetListProvider"

    if-nez v0, :cond_0

    const-string p1, "openSelectedNote# getContract is null"

    invoke-static {v1, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "sdoc_uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mde_space_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openSelectedNote# uuid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;->getDocOpenTriggerClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mde_group_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mde_owner_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "writer_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "account_type"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p2, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x10008000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private prepareContract()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->getContract()Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    return-void
.end method

.method private saveWidgetBackground(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "widget_transparency"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    :cond_0
    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveTransparency(II)V

    const-string v0, "widget_background_color"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveWidgetBackgroundColorPref(II)V

    :cond_1
    const-string v0, "widget_dark_mode"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_2

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveDarkModePref(II)V

    :cond_2
    return-void
.end method

.method private startNotePicker(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->isNotListWidget(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startNotePicker# failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetListProvider"

    invoke-static {p2, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "widget.MEMO_PICK_FROM_NOTE_LIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x18080000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "widget_action_pick"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "pick_type"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startWidgetSetting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->mPreviousEventTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/notes/widget/setting/WidgetListSettingActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "widget.MEMO_PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "widget_action_pick"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "note_uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pick_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getTransparency(I)I

    move-result v1

    const-string v2, "widget_transparency"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getBackgroundColor(I)I

    move-result v1

    const-string v2, "widget_background_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getDarkMode(I)I

    move-result p2

    const-string v1, "widget_dark_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAllMemo(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const-string v5, "updateAllMemo"

    invoke-direct {p0, v4, v3, v5}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAllWidget(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    const-string v5, "updateAllWidget"

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAppWidget(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppWidget# widgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "WidgetListProvider"

    invoke-static {v0, p4}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .locals 4
    .param p2    # Landroid/appwidget/AppWidgetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->isNotListWidget(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "WidgetListProvider"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateAppWidgetView# fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getNoteUuidList(I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppWidgetView# appWidgetIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->getLayoutId(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "receive_caller_up_update"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveTrueReverseTransparency(I)V

    :cond_1
    invoke-direct {p0, p1, v1, p3}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateEmptyWidgetView(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v1, p3}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateRemoteServiceIntent(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;

    invoke-direct {v2}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;-><init>()V

    invoke-virtual {v2, p1, v1, v0}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;->applyThemeToWidgetFrame(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveWidgetOrientationPref(II)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSupportSettingByQuickOption()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "widget.SETTING_MEMO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {p1, p3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_setting:I

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_3
    sget p1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p2, p3, v1, p4}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAppWidget(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    return-void
.end method

.method private updateEmptyWidgetView(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->getLayoutId(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateEmptyWidgetView(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method private updateEmptyWidgetView(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 7

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_empty_text:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_view:I

    const/16 v3, 0x8

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "widget.PICK_MEMO_LIST"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0xc000000

    invoke-static {p1, p3, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getEmptyTransparency(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-static {p3, v2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveTransparency(II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getEmptyWidgetAlpha()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSupportSettingByQuickOption()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-ge v5, v6, :cond_1

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "widget.SETTING_MEMO"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {p1, p3, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    invoke-virtual {p2, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_setting:I

    invoke-virtual {p2, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1
    sget v4, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v1, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;-><init>()V

    invoke-virtual {v1, p1, p2, v0}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;->applyThemeToEmptyWidget(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    const-string v0, "updateEmptyWidget"

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAppWidget(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    return-void
.end method

.method private updateRemoteServiceIntent(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/notes/widget/WidgetListService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_empty_text:I

    const/16 v2, 0x8

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_view:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "widget.OPEN_MEMO_LIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0xa000000

    invoke-static {p1, p3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private updateUuidListWidget(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getNoteUuidList(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const-string v5, "updateUuidWidget"

    invoke-direct {p0, v4, v3, v5}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateUuidWidget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getNoteUuidList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    const-string v5, "updateUuidWidget"

    invoke-direct {p0, v4, v3, v5}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->notifyAppWidgetViewDataChanged(Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppWidgetOptionsChanged# appWidgetIds: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "WidgetListProvider"

    invoke-static {v0, p4}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isDarkModeChange(Landroid/content/Context;I)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "dark mode change"

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isFoldOrientationChange(Landroid/content/Context;I)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "fold orientation change"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->deleteOldWidgetBackupData(Landroid/appwidget/AppWidgetManager;I)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeleted# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetListProvider"

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->deleteNoteListWidgetPref([I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const-string p1, "WidgetListProvider"

    const-string v0, "onDisabled# "

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    const-string p1, "WidgetListProvider"

    const-string v0, "onEnabled# "

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive# action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetListProvider"

    invoke-static {v2, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "widget.MEMO_UPDATE_UUID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "note_uuid"

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateUuidWidget(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "widget.MEMO_UPDATE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAllMemo(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "widget.MEMO_DELETE_UUID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->deleteUuidWidget(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v1, "widget.PICK_MEMO_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->startNotePicker(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const-string v1, "widget.MEMO_PICK_DONE_FROM_NOTE_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->doneNotePicker(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v1, "widget.OPEN_MEMO_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->openSelectedNote(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v1, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAllWidget(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const-string v1, "widget.MEMO_UPDATE_UUID_FROM_NOTE_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "note_uuid_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateUuidListWidget(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_7
    const-string v1, "widget.SETTING_MEMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->startWidgetSetting(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate# appWidgetIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetListProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p3, v2

    invoke-virtual {p2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Old_WidgetId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "New_WidgetId"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpdate# oldWidgetId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",newWidgetID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/samsung/android/app/notes/widget/util/WidgetBRHelper;->restoreWidgetInfoWithoutUUID(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, v5}, Lcom/samsung/android/app/notes/widget/util/WidgetBRHelper;->restoreNoteListWidgetInfo(II)V

    :cond_0
    const-string v4, "receive_caller_up_update"

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/samsung/android/app/notes/widget/WidgetListProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
