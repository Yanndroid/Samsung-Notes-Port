.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzib;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<API::",
        "Lcom/google/android/gms/internal/meet_coactivities/zzjb<",
        "TAPI;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzjp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzjp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    return-void
.end method

.method private static zzi(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zze()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": logging error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjn;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzis;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzis;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzis;

    if-eq p1, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzis;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzis;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzis;->zza()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "]: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;
.end method

.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzjb;
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzjb;
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzmn;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzmn;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzmn;->zzb()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V

    goto :goto_0

    :cond_0
    const-string v1, "unbounded recursion in log statement"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzmn;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzmn;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzb(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzjq; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzjn;)V

    :try_start_7
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-void

    :catch_4
    move-exception p1

    throw p1
.end method

.method public final zzh(Ljava/util/logging/Level;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjp;->zzd(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method
