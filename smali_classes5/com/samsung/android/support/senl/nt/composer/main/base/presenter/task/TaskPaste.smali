.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBeginHistory:Z

.field private mDoPFileTransmitReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

.field private mIsCleared:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskPaste"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mDoPFileTransmitReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mBeginHistory:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mIsCleared:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mDoPFileTransmitReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mDoPFileTransmitReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    return-void
.end method

.method private beginHistoryGroup(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mBeginHistory:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->startPasteHandler(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V

    return-void
.end method

.method private callDownloadFailCallback(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;-><init>(Landroid/content/Context;IZ)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->updateInvertBackgroundColor(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getClipLabel(Landroid/content/ClipData;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private runBroadcastReceiver(Landroid/content/Context;Landroid/content/ClipData;)V
    .locals 4

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->getEventIdInClipData(Landroid/content/ClipData;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runBroadcastReceiver id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->getDoPDataFromClipData(Landroid/content/ClipData;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;)V

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;-><init>(ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver$Callback;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mDoPFileTransmitReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;->getIntentFilterForDoPFileTransmitReceiver()Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "dexonpc.app.action.permission.KMS_FILETRANSFER_DRAG_FILEINFO"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private startFileTransmission(Landroid/content/Context;Landroid/content/ClipData;)V
    .locals 6

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->getEventIdInClipData(Landroid/content/ClipData;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->sendResponseBroadcast(Landroid/content/Context;Landroid/content/ClipData;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->runBroadcastReceiver(Landroid/content/Context;Landroid/content/ClipData;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    const-string v0, "startFileTransmission# clipboard is null"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->callDownloadFailCallback(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    const-string v0, "startFileTransmission# getPrimaryClip is null"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->callDownloadFailCallback(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->getClipLabel(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->isDoPDrop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->getEventIdInClipData(Landroid/content/ClipData;)I

    move-result p2

    if-ltz p2, :cond_5

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->sendResponseBroadcast(Landroid/content/Context;Landroid/content/ClipData;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->runBroadcastReceiver(Landroid/content/Context;Landroid/content/ClipData;)V

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->callDownloadFailCallback(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method private startPasteHandler(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V
    .locals 27

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->beginHistoryGroup(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->o(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)I

    move-result v11

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;-><init>(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;I)V

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/Context;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/ClipData;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->o(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)I

    move-result v22

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Z

    move-result v24

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;

    move-result-object v25

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Z

    move-result v26

    move-object v12, v1

    invoke-direct/range {v12 .. v26}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;-><init>(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;ILandroid/graphics/PointF;ZLcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Z)V

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->removeSelectedText()Z

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;->blockToShow(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateInvertBackgroundColor(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mBeginHistory:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mDoPFileTransmitReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mDoPFileTransmitReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPFileTransmitReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->clearDownloadDir()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;->blockToShow(ZLjava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->mIsCleared:Z

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;-><init>(Landroid/content/Context;IZ)V

    invoke-interface {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->getClipLabel(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/dex/DoPControlClipData;->isDoPDrop(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isConnectedDoP(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->startFileTransmission(Landroid/content/Context;Landroid/content/ClipData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;-><init>(Landroid/content/Context;IZ)V

    invoke-interface {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->startPasteHandler(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCoeditNoTimeoutPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedToCheckNoteSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
