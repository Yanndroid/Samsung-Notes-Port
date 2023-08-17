.class public final Lcom/google/android/gms/internal/meet_coactivities/zzah;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzah;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:I

.field private zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzah;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzah;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzag;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzag;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/meet_coactivities/zzah;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzah;

    return-object v0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzah;Lcom/google/android/gms/internal/meet_coactivities/zznj;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznj;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zze:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/meet_coactivities/zzah;Lcom/google/android/gms/internal/meet_coactivities/zznh;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzf:I

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zznh;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zznh;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznh;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznh;

    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zznj;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zznj;->zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zznj;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznj;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zznj;

    :cond_0
    return-object v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zzah;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzah;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzah;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzag;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzag;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zze;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzah;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zze"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "zzf"

    aput-object p1, p3, p2

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzah;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzah;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u000c"

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
