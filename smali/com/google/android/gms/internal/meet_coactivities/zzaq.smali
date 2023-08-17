.class public final Lcom/google/android/gms/internal/meet_coactivities/zzaq;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaq;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/Object;

.field private zzh:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzf:I

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/meet_coactivities/zzaq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzaq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzam;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzg:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzam;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzam;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzh:Z

    return v0
.end method

.method public final zze()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzf:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public final zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzap;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzap;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zze;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaq;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zzg"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, p3, v4

    const-string p1, "zzf"

    aput-object p1, p3, p2

    const-string p1, "zze"

    aput-object p1, p3, v3

    const-class p1, Lcom/google/android/gms/internal/meet_coactivities/zzam;

    aput-object p1, p3, v2

    const-class p1, Lcom/google/android/gms/internal/meet_coactivities/zzao;

    aput-object p1, p3, v1

    const-string p1, "zzh"

    aput-object p1, p3, v0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    const-string p2, "\u0000\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003\u1007\u0000"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
