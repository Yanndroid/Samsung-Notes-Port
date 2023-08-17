.class public final Lcom/google/android/gms/internal/meet_coactivities/zzalv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;

.field private static final zzb:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzalv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzb:Ljava/util/logging/Logger;

    const-string v0, "GRPC_CLIENT_CALL_REJECT_RUNNABLE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :cond_0
    const-string v0, "internal-stub-type"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzth;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzth;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zztn;Lcom/google/android/gms/internal/meet_coactivities/zzalx;)Lcom/google/android/gms/internal/meet_coactivities/zzalx;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zztn;Z)V

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzalt;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzalx;Lcom/google/android/gms/internal/meet_coactivities/zzalq;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zze(Lcom/google/android/gms/internal/meet_coactivities/zztn;Lcom/google/android/gms/internal/meet_coactivities/zzals;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzalx;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzalt;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzalq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zztn;Z)V

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzalx;Lcom/google/android/gms/internal/meet_coactivities/zzalq;)V

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzals;)V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzb:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "io.grpc.stub.ClientCalls"

    const-string v4, "cancelThrow"

    const-string v5, "RuntimeException encountered while closing call"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method private static zzd(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzals;)V
    .locals 0

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zze(Lcom/google/android/gms/internal/meet_coactivities/zztn;Lcom/google/android/gms/internal/meet_coactivities/zzals;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzd(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzb()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalv;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zztn;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static zze(Lcom/google/android/gms/internal/meet_coactivities/zztn;Lcom/google/android/gms/internal/meet_coactivities/zzals;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zze(Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzals;->zze()V

    return-void
.end method
