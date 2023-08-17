.class public final Lcom/google/android/gms/internal/meet_coactivities/zzgy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzgr;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzgr;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzgw;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzgr;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized zzd(Landroid/content/Context;Lcom/google/android/gms/internal/meet_coactivities/zzgo;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzhd;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzhd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzgo;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "ACTION_S11Y"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzgv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgv;

    invoke-virtual {p3, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaj;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzai;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzai;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzj()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzaj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zznu;->zzt()[B

    move-result-object p2

    const-string p3, "S11Y_SESSION_DETECTION_REQUEST"

    invoke-virtual {v7, p3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final synthetic zzb(Landroid/content/Context;Ljava/util/Optional;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzgt;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzgt;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzgy;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/meet_coactivities/zzgo;Ljava/util/Optional;Ljava/util/Optional;)V

    const-class p1, Lcom/google/android/gms/internal/meet_coactivities/zzgo;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Landroid/content/Context;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzgt;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzgt;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p3

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzgy;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/meet_coactivities/zzgo;Ljava/util/Optional;Ljava/util/Optional;)V

    const-class p1, Lcom/google/android/gms/internal/meet_coactivities/zzgo;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
