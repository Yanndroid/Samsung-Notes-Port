.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/InvalidTask;
.super Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InvalidTask"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/InvalidTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/InvalidTask;->TAG:Ljava/lang/String;

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
