.class final Lcom/google/android/gms/internal/meet_coactivities/zzabj;
.super Lcom/google/android/gms/internal/meet_coactivities/zztl;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzabk;Lcom/google/android/gms/internal/meet_coactivities/zzalg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztl;-><init>()V

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    const-string p1, "time"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzalg;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzalg;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvj;ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zze(I)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zza:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvj;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvj;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zze(I)Ljava/util/logging/Level;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zza:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvj;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static zze(I)Ljava/util/logging/Level;
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0
.end method

.method private final zzf(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zzd()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzvj;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzvj;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zzf(I)Z

    return-void
.end method

.method public final varargs zzb(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zze(I)Ljava/util/logging/Level;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zzf(I)Z

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzabk;->zza:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzabj;->zza(ILjava/lang/String;)V

    return-void
.end method
