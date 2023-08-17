.class public final Lcom/google/android/gms/internal/meet_coactivities/zzns;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:Lcom/google/android/gms/internal/meet_coactivities/zznl;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/meet_coactivities/zzqw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzns;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzqw;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zznm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznm;

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/meet_coactivities/zzns;)Lcom/google/android/gms/internal/meet_coactivities/zznm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznm;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/meet_coactivities/zzns;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/meet_coactivities/zzns;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    return-object v0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzns;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqw;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqw;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    return-object p0
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/meet_coactivities/zzns;Lcom/google/android/gms/internal/meet_coactivities/zznl;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zze:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zzns;Lcom/google/android/gms/internal/meet_coactivities/zznr;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznr;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zznl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zze:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zznl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzg()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzqw;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 p2, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zznm;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zznm;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzmz;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzns;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zze"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p3, v2

    const-string p1, "zzf"

    aput-object p1, p3, p2

    const-string p1, "zzg"

    aput-object p1, p3, v1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznn;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzqv;

    aput-object p1, p3, v0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzns;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0000\u0000\u0001\t\u0002\u000c\u00032"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
