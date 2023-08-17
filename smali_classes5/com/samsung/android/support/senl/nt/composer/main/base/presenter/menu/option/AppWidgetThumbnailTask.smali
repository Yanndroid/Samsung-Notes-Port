.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final STATE_END:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_START:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppWidgetResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;

.field private mContext:Landroid/content/Context;

.field private mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModifiedTime:J

.field private mState:I

.field private mWidgetCacheInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AppWidgetThumbnailTask"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mAppWidgetResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mWidgetCacheInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    iput-wide p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mLastModifiedTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mState:I

    return-void
.end method

.method public static makeTask(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/AppWidgetResolverConstructor;->getAppWidgetResolver()Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->hasWidget(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->TAG:Ljava/lang/String;

    const-string v2, "makeTask#"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v6

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->getLastModifiedTime()J

    move-result-wide v1

    cmp-long p2, v1, v6

    if-ltz p2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getScheduler()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getScheduler()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSchedulerDataSource;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_1

    :cond_3
    :goto_0
    return-object v0

    :catch_1
    move-exception p0

    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :cond_4
    :goto_2
    return-object p0
.end method


# virtual methods
.method public getLastModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mLastModifiedTime:J

    return-wide v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWidgetUpdate(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getLastModifiedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->getLastModifiedTime()J

    move-result-wide v2

    cmp-long p1, v2, v0

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

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mWidgetCacheInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mState:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->TAG:Ljava/lang/String;

    const-string v2, "capture start"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mLastModifiedTime:J

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mWidgetCacheInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;->setDocLastModifiedTime(J)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mAppWidgetResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mWidgetCacheInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mDocState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDoc()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->createThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->release()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "capture end"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AppWidgetThumbnailTask;->mState:I

    return-void
.end method
