.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

.field private static sPwInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PdfWriterManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->initPwInfoMap()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->sInstance:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->sInstance:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->sInstance:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPathFrom(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->isSaveAs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static declared-synchronized initPwInfoMap()V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->sPwInfoMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized moveExistPwToFront(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->sPwInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->getPathFrom(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->TAG:Ljava/lang/String;

    const-string v0, "moveExistPwToFront#"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;->getTaskId()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->moveToFront(Landroid/content/Context;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public register(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->isSaveAs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->register(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized register(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->sPwInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/IPwInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/lifecycle/PdfWriterManager;->sPwInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
