.class public final Lcom/google/android/gms/internal/meet_coactivities/zznf;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:Lcom/google/android/gms/internal/meet_coactivities/zznd;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zznf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zznf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zznf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zzne;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzne;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/meet_coactivities/zznf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/meet_coactivities/zznf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

    return-object v0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zznf;Lcom/google/android/gms/internal/meet_coactivities/zznd;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zze:Lcom/google/android/gms/internal/meet_coactivities/zznd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zznd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zze:Lcom/google/android/gms/internal/meet_coactivities/zznd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznd;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zznd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zznf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzne;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzne;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzmz;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zznf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznf;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznf;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
