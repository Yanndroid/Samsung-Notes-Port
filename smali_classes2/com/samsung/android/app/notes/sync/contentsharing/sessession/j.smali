.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;
.source "SourceFile"


# static fields
.field public static n:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getNewNotesServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->y()V

    return-void
.end method

.method public static declared-synchronized L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->n:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->n:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->n:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, "SesSession$SesSessionCoEdit"

    return-object v0
.end method
