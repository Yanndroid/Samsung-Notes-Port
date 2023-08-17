.class public final Lcom/google/android/gms/internal/meet_coactivities/zzaew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zze:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzg:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzh:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzi:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzj:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

.field public static final zzk:Lcom/google/common/base/Splitter;

.field public static final zzl:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

.field public static final zzm:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

.field public static final zzn:Lcom/google/android/gms/internal/meet_coactivities/zzth;

.field public static final zzo:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

.field public static final zzp:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

.field public static final zzq:Lcom/google/common/base/Supplier;

.field private static final zzr:Ljava/util/logging/Logger;

.field private static final zzs:Ljava/util/Set;

.field private static final zzt:Lcom/google/android/gms/internal/meet_coactivities/zztw;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzr:Ljava/util/logging/Logger;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzxy;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzs:Ljava/util/Set;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zza:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaev;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaev;-><init>()V

    const-string v1, "grpc-timeout"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwm;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwm;

    const-string v1, "grpc-encoding"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwm;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaeu;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaeu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaet;)V

    const-string v3, "grpc-accept-encoding"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvl;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzvk;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    const-string v1, "content-encoding"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwm;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzaeu;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaeu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzaet;)V

    const-string v2, "accept-encoding"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvl;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzvk;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    const-string v1, "content-length"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwm;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    const-string v1, "content-type"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwm;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    const-string v1, "te"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwm;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    const-string v1, "user-agent"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwm;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzk:Lcom/google/common/base/Splitter;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzair;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzair;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzl:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaeo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaeo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzm:Lcom/google/android/gms/internal/meet_coactivities/zzxt;

    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzth;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzth;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zztw;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaes;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzq:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 5

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzs:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzxy;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inappropriate status code from control plane: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzi()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvt;Z)Lcom/google/android/gms/internal/meet_coactivities/zzaby;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzvy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvy;->zzb()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzalh;->zzh()Lcom/google/android/gms/internal/meet_coactivities/zzaby;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;)V

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static zzc(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance p1, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/meet_coactivities/zzald;)V
    .locals 1

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzald;->zzf()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzf(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzf(Ljava/io/Closeable;)V
    .locals 6
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzr:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "io.grpc.internal.GrpcUtil"

    const-string v3, "closeQuietly"

    const-string v4, "exception caught in closeQuietly"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/meet_coactivities/zzti;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzn:Lcom/google/android/gms/internal/meet_coactivities/zzth;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzth;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzh(Lcom/google/android/gms/internal/meet_coactivities/zzti;Lcom/google/android/gms/internal/meet_coactivities/zzwu;IZ)[Lcom/google/android/gms/internal/meet_coactivities/zztw;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zzm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lcom/google/android/gms/internal/meet_coactivities/zztw;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zztv;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztu;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztu;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zzc(I)Lcom/google/android/gms/internal/meet_coactivities/zztu;

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zzb(Z)Lcom/google/android/gms/internal/meet_coactivities/zztu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/meet_coactivities/zztu;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zztv;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zztt;

    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztt;->zza(Lcom/google/android/gms/internal/meet_coactivities/zztv;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)Lcom/google/android/gms/internal/meet_coactivities/zztw;

    move-result-object p3

    aput-object p3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    sget-object p0, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzt:Lcom/google/android/gms/internal/meet_coactivities/zztw;

    aput-object p0, v2, v1

    return-object v2
.end method
