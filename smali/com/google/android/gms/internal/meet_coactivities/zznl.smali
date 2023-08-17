.class public final Lcom/google/android/gms/internal/meet_coactivities/zznl;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

.field private zzg:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

.field private zzh:I

.field private zzi:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zznl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zznk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/meet_coactivities/zznl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/meet_coactivities/zznl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    return-object v0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zznl;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/meet_coactivities/zznl;Lcom/google/android/gms/internal/meet_coactivities/zzpd;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zznl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/meet_coactivities/zznl;Lcom/google/android/gms/internal/meet_coactivities/zzpd;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzg:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/meet_coactivities/zznl;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzi:D

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/meet_coactivities/zznl;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzh:I

    return-void
.end method


# virtual methods
.method public final zza()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzi:D

    return-wide v0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzpd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzg()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 p2, 0x0

    if-eq p1, v0, :cond_4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zznk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zznk;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzmz;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznl;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zze"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p3, v3

    const-string p1, "zzf"

    aput-object p1, p3, p2

    const-string p1, "zzh"

    aput-object p1, p3, v2

    const-string p1, "zzi"

    aput-object p1, p3, v1

    const-string p1, "zzg"

    aput-object p1, p3, v0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznl;

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\u000c\u0004\u0000\u0005\t"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzm()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznl;->zzh:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    return v4

    :cond_5
    return v1
.end method
