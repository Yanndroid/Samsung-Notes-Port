.class public Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;
.super Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;,
        Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMPORT_FAIL_WITH_MSG:Ljava/lang/String; = "IMPORT_FAIL_WITH_MSG"

.field private static final SDOCX_IMPORT_SUCCESS:Ljava/lang/String; = "SDOCX_IMPORT_SUCCESS"

.field private static final SDOC_IMPORT_SUCCESS:Ljava/lang/String; = "SDOC_IMPORT_SUCCESS"

.field private static final TAG:Ljava/lang/String; = "TriggerImportTask"

.field private static final TRIGGER_IMPORT_PREFIX:Ljava/lang/String; = "TrImport"

.field private static final UNSUPPORTED_DOC_TYPE:Ljava/lang/String; = "UNSUPPORTED_DOC_TYPE"


# instance fields
.field private final mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;

    return-void
.end method

.method private getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->getContentName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private importSdoc(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V
    .locals 5

    const-string v0, "IMPORT_FAIL_WITH_MSG"

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setContext(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setExternalPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    const-string v3, "TriggerImportTask"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setCaller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportSdocTask;

    invoke-direct {v3, v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportSdocTask;-><init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->setImported(Z)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->call()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SDOC_IMPORT_SUCCESS"

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertFromUri, failed to import import sdoc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setMsg(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertFromUri, exception during import sdoc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / e : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setMsg(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb1/b;->e(Ljava/lang/String;)Z

    return-void

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb1/b;->e(Ljava/lang/String;)Z

    throw v0
.end method

.method private importSdocx(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V
    .locals 5

    const-string v0, "IMPORT_FAIL_WITH_MSG"

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setContext(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setExternalPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    const-string v3, "uncategorized:///"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    const-string v3, "TriggerImportTask"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->setCaller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;

    invoke-direct {v3, v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportWdocTask;-><init>(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->setImported(Z)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$1;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->setImportTaskListener(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportTask;->call()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SDOCX_IMPORT_SUCCESS"

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertFromUri, failed to import sdocx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setMsg(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertFromUri, exception during import sdocx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / e : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setMsg(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb1/b;->e(Ljava/lang/String;)Z

    return-void

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb1/b;->e(Ljava/lang/String;)Z

    throw v0
.end method

.method private notifyCallback(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallback, result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TriggerImportTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SDOCX_IMPORT_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "IMPORT_FAIL_WITH_MSG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "SDOC_IMPORT_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "UNSUPPORTED_DOC_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;

    const-string v0, "unexpected case"

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;->onFailed(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;->onSdocxImported(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->isUnsupportedVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;->onFailedWithError(ZLjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;->onSdocImported(Ljava/lang/String;)V

    :goto_1
    :pswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4aae5715 -> :sswitch_3
        -0x2733d71d -> :sswitch_2
        -0x1392d6b1 -> :sswitch_1
        0x108e71f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs doInBackground([Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "TriggerImportTask-thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->downloadFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object v0

    const-string v1, ".sdoc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->importSdoc(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V

    goto :goto_0

    :cond_0
    const-string v1, ".sdocx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->importSdocx(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;->onFailedUnsupportedDocType(Ljava/lang/String;)V

    const-string p1, "UNSUPPORTED_DOC_TYPE"

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setResult(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->doInBackground([Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    move-result-object p1

    return-object p1
.end method

.method public downloadFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "TriggerImportTask"

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "downloadFile, failed to extract fileName"

    :goto_0
    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v1, "TrImport"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileExtensions;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p1}, Lb1/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "downloadFile, failed to get cache directory"

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->saveUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_3
    const-string p1, "downloadFile, failed to download a file from Uri"

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "downloadFile, path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onPostExecute(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->dismissDialog()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->notifyCallback(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->release()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->onPostExecute(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showImportProgressDialog()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;

    const-string v1, "onPreExecute, cannot create a dialog"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;->onFailed(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
