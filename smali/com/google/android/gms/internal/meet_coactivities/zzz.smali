.class public final Lcom/google/android/gms/internal/meet_coactivities/zzz;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:Lcom/google/android/gms/internal/meet_coactivities/zzm;

.field private zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzy;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/meet_coactivities/zzz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/meet_coactivities/zzz;Lcom/google/android/gms/internal/meet_coactivities/zzm;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzm;

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzz;Lcom/google/android/gms/internal/meet_coactivities/zzaf;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzaf;

    return-void
.end method


# virtual methods
.method public final zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x2

    if-eq p1, p3, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zzz;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzy;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zze;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzz;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zze"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "zzf"

    aput-object p1, p3, p2

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzz;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
