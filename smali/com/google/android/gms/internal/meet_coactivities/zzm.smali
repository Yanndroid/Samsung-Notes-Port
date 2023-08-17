.class public final Lcom/google/android/gms/internal/meet_coactivities/zzm;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzl;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/meet_coactivities/zzm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    return-object v0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zzm;Lcom/google/android/gms/internal/meet_coactivities/zzad;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzad;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    :cond_0
    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzf:Ljava/lang/String;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzl;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzl;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zze;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzm;-><init>()V

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

    const-string p1, "zzh"

    aput-object p1, p3, v0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000c\u0004\u0208"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
