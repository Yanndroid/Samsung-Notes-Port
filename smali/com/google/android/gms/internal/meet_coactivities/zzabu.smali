.class final Lcom/google/android/gms/internal/meet_coactivities/zzabu;
.super Lcom/google/android/gms/internal/meet_coactivities/zztn;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:[B


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzamj;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

.field private final zzh:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

.field private volatile zzi:Ljava/util/concurrent/ScheduledFuture;

.field private final zzj:Z

.field private zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

.field private zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

.field private volatile zzm:Z

.field private zzn:Z

.field private zzo:Z

.field private final zzp:Lcom/google/android/gms/internal/meet_coactivities/zzabq;

.field private final zzq:Lcom/google/android/gms/internal/meet_coactivities/zzabs;

.field private final zzr:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzs:Lcom/google/android/gms/internal/meet_coactivities/zzuo;

.field private zzt:Lcom/google/android/gms/internal/meet_coactivities/zzub;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zza:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzb:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzabq;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/meet_coactivities/zzabi;Lcom/google/android/gms/internal/meet_coactivities/zzvg;)V
    .locals 2
    .param p7    # Lcom/google/android/gms/internal/meet_coactivities/zzvg;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;-><init>()V

    new-instance p7, Lcom/google/android/gms/internal/meet_coactivities/zzabs;

    const/4 v0, 0x0

    invoke-direct {p7, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabs;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabu;Lcom/google/android/gms/internal/meet_coactivities/zzabr;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzabs;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzuo;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    move-result-object p7

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzub;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzub;

    move-result-object p7

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zzub;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzf()Ljava/lang/String;

    move-result-object p7

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p7, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/meet_coactivities/zzamj;

    move-result-object p7

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzamj;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p7, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzakk;

    invoke-direct {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzakk;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zze:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzf:Z

    goto :goto_0

    :cond_0
    new-instance p7, Lcom/google/android/gms/internal/meet_coactivities/zzakr;

    invoke-direct {p7, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzakr;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zze:Ljava/util/concurrent/Executor;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzf:Z

    :goto_0
    iput-object p6, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    move-result-object p2

    sget-object p6, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    if-eq p2, p6, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    if-ne p1, p2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzj:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzabq;

    iput-object p5, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzr:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzuh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzul;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzp()Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zze:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/meet_coactivities/zzabu;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzm:Z

    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/meet_coactivities/zzabu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzq()V

    return-void
.end method

.method private final zzp()Lcom/google/android/gms/internal/meet_coactivities/zzul;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private final zzq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzi:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private final zzr(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzn:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzo:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    instance-of v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzX(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zzc(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzm(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzj:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzc()V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v2, "Client sendMessage() failed with Error"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    throw p1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    const-string v1, "Failed to stream message"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zza:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "io.grpc.internal.ClientCallImpl"

    const-string v4, "cancelInternal"

    const-string v5, "Cancelling without a message or cause is suboptimal"

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzn:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "Call cancelled without message"

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzq()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzq()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final zzb()V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzn:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzo:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final zzc(I)V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "Number requested must be non-negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzr(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zztm;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget v3, Lcom/google/android/gms/internal/meet_coactivities/zzami;->zza:I

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v6, "Already started"

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v3, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzn:Z

    xor-int/2addr v3, v4

    const-string v6, "call was cancelled"

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v3, "observer"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "headers"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzth;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;

    if-nez v3, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v6, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzb:Ljava/lang/Long;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzc(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzul;)I

    move-result v7

    if-gez v7, :cond_3

    :cond_2
    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzul;)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    :cond_3
    iget-object v6, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzc:Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzg()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v6

    goto :goto_1

    :cond_4
    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v6

    :goto_1
    iput-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    :cond_5
    iget-object v6, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    if-eqz v6, :cond_7

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzj()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzc(I)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v6

    :goto_2
    iput-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    goto :goto_3

    :cond_6
    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iget-object v7, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zzd:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzc(I)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v6

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v6, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzk()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd(I)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v3

    :goto_4
    iput-object v3, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    goto :goto_5

    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iget-object v3, v3, Lcom/google/android/gms/internal/meet_coactivities/zzahz;->zze:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzd(I)Lcom/google/android/gms/internal/meet_coactivities/zzti;

    move-result-object v3

    goto :goto_4

    :cond_9
    :goto_5
    sget-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzty;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztz;

    iget-object v6, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    sget-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwp;)V

    sget-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwp;)V

    sget-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwp;)V

    invoke-static {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzvh;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzuo;)[B

    move-result-object v6

    array-length v8, v6

    if-eqz v8, :cond_a

    invoke-virtual {v2, v7, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzwp;Ljava/lang/Object;)V

    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwp;)V

    sget-object v6, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwp;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzp()Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzd()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-static {v4, v2, v5, v5}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzwu;IZ)[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;

    sget-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ClientCall started after deadline exceeded: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    invoke-direct {v4, v5, v8, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    goto :goto_9

    :cond_b
    iget-object v8, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzi()Lcom/google/android/gms/internal/meet_coactivities/zzul;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zza:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v6, :cond_e

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_8

    :cond_c
    const-wide/16 v11, 0x0

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Call timeout set to \'%d\' ns, due to context deadline."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v5, v12

    invoke-static {v15, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_d

    const-string v4, " Explicit call timeout was not set."

    :goto_6
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    const-string v5, " Explicit call timeout was \'%d\' ns."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-static {v15, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :goto_7
    const-string v4, "io.grpc.internal.ClientCallImpl"

    const-string v5, "logIfContextNarrowedTimeout"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10, v4, v5, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_8
    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzabq;

    iget-object v5, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iget-object v7, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iget-object v8, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    invoke-interface {v4, v5, v7, v2, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzabq;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzuh;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    :goto_9
    iget-boolean v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzf:Z

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zze()V

    :cond_f
    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzj()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzj()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzj(I)V

    :cond_10
    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzk()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzk()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzk(I)V

    :cond_11
    if-eqz v6, :cond_12

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzul;)V

    :cond_12
    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzalc;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzua;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    iget-object v3, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzuo;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabi;->zzb()V

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzabp;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzabp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabu;Lcom/google/android/gms/internal/meet_coactivities/zztm;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzuh;

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzq:Lcom/google/android/gms/internal/meet_coactivities/zzabs;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzuh;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzue;Ljava/util/concurrent/Executor;)V

    if-eqz v6, :cond_13

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzr:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzul;->zzb(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzr:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzafw;

    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzabt;

    invoke-direct {v6, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzabu;J)V

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzafw;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v4, v5, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzi:Ljava/util/concurrent/ScheduledFuture;

    :cond_13
    iget-boolean v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzm:Z

    if-eqz v0, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/meet_coactivities/zzub;)Lcom/google/android/gms/internal/meet_coactivities/zzabu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zzub;

    return-object p0
.end method

.method public final zzk(Lcom/google/android/gms/internal/meet_coactivities/zzuo;)Lcom/google/android/gms/internal/meet_coactivities/zzabu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzabu;->zzs:Lcom/google/android/gms/internal/meet_coactivities/zzuo;

    return-object p0
.end method
