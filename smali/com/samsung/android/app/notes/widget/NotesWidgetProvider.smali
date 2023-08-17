.class public abstract Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field public static final SKIP_TIME:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private checkEventTime(JJ)Z
    .locals 2

    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private deleteOldWidgetBackupData(Landroid/appwidget/AppWidgetManager;I)V
    .locals 4

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
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteOldWidgetBackupData# oldWidgetID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/ newWidgetID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appWidgetId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/notes/widget/util/WidgetBRHelper;->deleteWidgetInfoWithoutUuid(I)V

    :cond_1
    return-void
.end method

.method public static openMemoList(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendUpdateAllWidgetBroadcast(Landroid/content/Context;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private updateAppWidgetAndNotify(Landroid/appwidget/AppWidgetManager;IILandroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppWidget# widgetId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppWidgetViewDataChanged# widgetId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    return-void
.end method


# virtual methods
.method public abstract TAG()Ljava/lang/String;
.end method

.method public convertFromWidget(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "convertFromWidget#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->checkEventTime(JJ)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    const-string p4, "appWidgetId"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "convertFromWidget# widgetId : "

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uuid : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path :"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/app/notes/widget/common/ConvertConfirmDialogActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "widget.MEMO_CONVERT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "sdoc_uuid"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "doc_path"

    invoke-virtual {v3, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x18000000

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "uuid : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->openMemoList(Landroid/content/Context;)V

    :goto_0
    const-wide/16 p1, 0x3e8

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->setPreviousEventTime(J)V

    :cond_1
    return-void
.end method

.method public convertOpacity(I)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->needReverseColor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getEmptyTransparency(I)I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getReverseTransparency(I)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertOpacity# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveTransparency(II)V

    :cond_1
    return-void
.end method

.method public deleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteWidget#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, v1}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->deleteWidgetPref(IZ)V

    const-string v4, "deleteWidget"

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteWidgetByUUIDList(Landroid/content/Context;Landroid/content/ComponentName;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteWidgetByUUIDList#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p2, v3

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4, v2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->deleteWidgetPref(IZ)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v4, v5, v2

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract getThis()Ljava/lang/Class;
.end method

.method public isCurrentProviderWidget(Landroid/content/Context;Landroid/content/ComponentName;J)Z
    .locals 4

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p1, v1

    int-to-long v2, v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isDeleteNote(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeleteNote# removeAppWidget - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->getThis()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->deleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isMakeWidgetContent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isTextOnlyNote(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "note_none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isTextOnlyNote(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract makeConvertWidgetView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
.end method

.method public abstract makeEmptyWidgetView(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/RemoteViews;
.end method

.method public abstract makeWidgetListView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->deleteOldWidgetBackupData(Landroid/appwidget/AppWidgetManager;I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->unregisterEasyModeContentObserver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDisabled#"

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->registerEasyModeContentObserver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onEnabled#"

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->registerEasyModeContentObserver(Landroid/content/Context;)V

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget v0, p3, v1

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Old_WidgetId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "New_WidgetId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v1

    move v7, v6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[III)V

    return-void
.end method

.method public abstract onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[III)V
.end method

.method public openMemoListFromWidget(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openMemoListFromWidget#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->checkEventTime(JJ)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "appWidgetId"

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSDoc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p3

    const-string p4, "openMemoListFromWidget# need to convert"

    invoke-static {p3, p4}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->makeConvertWidgetView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object p1

    const-string p4, "openMemoListAndConvert"

    invoke-virtual {p0, p3, p2, p1, p4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidget(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openMemoListFromWidget# widgetId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uuid : "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " path :"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object p2

    const/4 v2, 0x1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v3

    invoke-virtual {v3}, Ln/a;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, p3}, Lv/f;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    move v8, v2

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    invoke-virtual {p4, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "test"

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p4

    const-string v3, "openMemoListFromWidget# this is mde file"

    invoke-static {p4, v3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    const-string p4, "mde_space_id"

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "mde_group_id"

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "mde_owner_id"

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "writer_name"

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getCreatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "account_type"

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getAccountType()I

    move-result v2

    invoke-virtual {p2, p4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const-string p4, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "sdoc_uuid"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x10008000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openMemoListFromWidget# widgetId : "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "uuid : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->openMemoList(Landroid/content/Context;)V

    :goto_1
    const-wide/16 p1, 0x3e8

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->setPreviousEventTime(J)V

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pickMemoListFromWidget(Landroid/content/Context;Landroid/content/Intent;JZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickMemoListFromWidget#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->checkEventTime(JJ)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetResolverClass()Ljava/lang/Class;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p3, v2, p4}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllNoteCount(IZ)I

    move-result p3

    const/4 v2, -0x1

    const-string v3, "appWidgetId"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->getThis()Ljava/lang/Class;

    move-result-object p5

    invoke-static {p1, p5, p2}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->isAvailableToReferWidget(Landroid/content/Context;Ljava/lang/Class;I)Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->showWidgetMaximumToast(Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    new-instance p3, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object p5

    invoke-direct {p3, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p5, "com.samsung.android.app.notes.ACTION_NEW_MEMO"

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p5, 0x10008000

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p5, "NEW_MEMO_FROM_PICKER"

    invoke-virtual {p3, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "tool_type"

    goto :goto_1

    :cond_4
    new-instance p3, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object p5

    invoke-direct {p3, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p5, "widget.MEMO_PICK"

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p5, 0x18080000

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p5, "widget_action_pick"

    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "pick_type"

    :goto_1
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    const-wide/16 p1, 0x3e8

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->setPreviousEventTime(J)V

    :cond_5
    return-void
.end method

.method public removePreviousCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isDoneState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->isAfterLastModifyTime(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "removePreviousCache# skip"

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract setPreviousEventTime(J)V
.end method

.method public setWidgetTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;ZIII)V
    .locals 6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ", "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_shortcut_to_title_note:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_shortcut_to_untitled_note:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p3, " "

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, p5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, p6, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p7, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/samsung/android/support/senl/nt/homewidget/R$string;->widget_shortcut_open_note:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p6, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public updateAllWidget(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateAllWidget#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "updateAllWidget# "

    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateAppWidget(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 4

    const-string v0, "/ caller = "

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppWidget# remoteViews is null from id = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppWidget# widgetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public updateAppWidgetAndNotify(Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;I)V
    .locals 6

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateAppWidgetAndNotify# remoteViews is null from id = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/ caller = onUpdate"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v5, "onUpdate"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidgetAndNotify(Landroid/appwidget/AppWidgetManager;IILandroid/widget/RemoteViews;Ljava/lang/String;)V

    return-void
.end method

.method public updateAppWidgetAndNotify(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->makeWidgetListView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppWidgetAndNotify# remoteViews is null from id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v2, p2

    move-object/from16 v3, p5

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    move-object v6, p0

    move v8, p2

    move/from16 v9, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidgetAndNotify(Landroid/appwidget/AppWidgetManager;IILandroid/widget/RemoteViews;Ljava/lang/String;)V

    return-void
.end method

.method public updateNoFilePathWidget(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/widget/RemoteViews;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateNoFilePathWidget#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "note_none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getPinUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoFilePathWidget# onUpdate : pinUUID - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->getPinFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getWidgetPref()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "samsung_note_widget_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->clearDocInfoForPinToHome()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->getWidgetAddDisplayType(Landroid/content/Context;)I

    move-result p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetDisplayDevicePref(II)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->getHomeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetHomeModePref(ILjava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->makeWidgetListView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->isMakeWidgetContent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->makeWidgetListView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoFilePathWidget# onUpdate : deleted - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->makeEmptyWidgetView(Landroid/content/Context;ILjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public updateWidget(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWidget# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public updateWidgetByCache(Landroid/content/Context;Landroid/content/ComponentName;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p2, v1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v2, v7, :cond_1

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "updateWidgetByCache"

    move-object v5, p0

    move-object v6, p1

    move v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateAppWidgetAndNotify(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public updateWidgetByConvertUUID(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateWidgetByConvertUUID# uuid is null or empty"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateWidgetByConvertUUID# new uuid is null or empty"

    goto :goto_0

    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget v2, p2, v1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2, p4}, Lcom/samsung/android/app/notes/widget/preference/WidgetPreferenceManager;->saveWidgetPref(ILjava/lang/String;)V

    const-string v3, "updateWidgetByConvertUUID"

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public updateWidgetByUUID(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateWidgetByUUID# uuid is null or empty"

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p2, v1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getUUID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->removePreviousCache(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "updateWidgetByUUID"

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/app/notes/widget/NotesWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
