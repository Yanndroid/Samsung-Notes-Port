.class public Lcom/samsung/android/app/notes/sync/synchronization/managers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/samsung/android/app/notes/sync/synchronization/managers/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/samsung/android/app/notes/sync/synchronization/managers/a;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/a;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;->a:Lcom/samsung/android/app/notes/sync/synchronization/managers/a;
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
.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ls0/c;

    const/16 v1, 0x144

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public c(J)Z
    .locals 2

    const-wide/32 v0, 0x18e0d

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x18e0e

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x18e0f

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
