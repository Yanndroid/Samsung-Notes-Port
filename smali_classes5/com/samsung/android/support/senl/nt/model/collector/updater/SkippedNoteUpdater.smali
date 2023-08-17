.class public Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;
.super Lcom/samsung/android/support/senl/nt/model/collector/updater/AbstractUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater$Executor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SkippedNoteUpdater"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/collector/updater/AbstractUpdater;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static execute()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;-><init>()V

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;->runExecutor()V

    return-void
.end method

.method private runExecutor()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater;->TAG:Ljava/lang/String;

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/updater/AbstractUpdater;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater$Executor;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/updater/SkippedNoteUpdater$Executor;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
