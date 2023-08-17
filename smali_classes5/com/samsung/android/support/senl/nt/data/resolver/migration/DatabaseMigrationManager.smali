.class public Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mOnCompletionListener:Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMigrationListener:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DatabaseMigrationManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$1;-><init>(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mCallable:Ljava/util/concurrent/Callable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$2;-><init>(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mOnCompletionListener:Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mOnMigrationListener:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic d(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->enableSeparateSearchData(Z)V

    return-void
.end method

.method private static enableSeparateSearchData(Z)V
    .locals 2

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "separate_search_data"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static needToSeparateSearchData()Z
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "separate_search_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/List;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_46_To_47;->checkMaxRetryTextSearchMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public execute()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->TAG:Ljava/lang/String;

    const-string v1, "execute, start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->needToSeparateSearchData()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "execute, do not need to separate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mOnMigrationListener:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;->onStart()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mCallable:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/util/concurrent/Callable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mOnCompletionListener:Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observe(Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCallable()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mCallable:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method public getCompletionListener()Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mOnCompletionListener:Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;

    return-object v0
.end method

.method public setOnMigrationListener(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;)Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->mOnMigrationListener:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;

    return-object p0
.end method
