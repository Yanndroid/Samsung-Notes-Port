.class public final Lcom/google/android/livesharing/LiveSharingClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static volatile zzb:Ljava/util/Optional;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/livesharing/LiveSharingClientFactory;->zza:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/google/android/livesharing/LiveSharingClientFactory;->zzb:Ljava/util/Optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/google/android/livesharing/LiveSharingClient;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/livesharing/LiveSharingClientFactory;->getClient(Ljava/util/Optional;Ljava/util/Optional;)Lcom/google/android/livesharing/LiveSharingClient;

    move-result-object v0

    return-object v0
.end method

.method public static getClient(Ljava/util/Optional;Ljava/util/Optional;)Lcom/google/android/livesharing/LiveSharingClient;
    .locals 2
    .param p0    # Ljava/util/Optional;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Optional;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)",
            "Lcom/google/android/livesharing/LiveSharingClient;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/livesharing/LiveSharingClientFactory;->zzb:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/livesharing/LiveSharingClientFactory;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/livesharing/LiveSharingClientFactory;->zzb:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;-><init>(Ljava/util/Optional;Ljava/util/Optional;)V

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sput-object p0, Lcom/google/android/livesharing/LiveSharingClientFactory;->zzb:Ljava/util/Optional;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/livesharing/LiveSharingClientFactory;->zzb:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/livesharing/LiveSharingClient;

    return-object p0
.end method
