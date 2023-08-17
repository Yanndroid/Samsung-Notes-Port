.class public final Lcom/google/android/gms/internal/meet_coactivities/zzo;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:Lcom/google/android/gms/internal/meet_coactivities/zzqb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzD()Lcom/google/android/gms/internal/meet_coactivities/zzqb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzqb;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzn;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/meet_coactivities/zzo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    return-object v0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzo;Lcom/google/android/gms/internal/meet_coactivities/zzon;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzqb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqb;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzqb;->zzd(I)Lcom/google/android/gms/internal/meet_coactivities/zzqb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzqb;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzqb;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzqb;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zzo;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzn;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzn;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zze;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzo;-><init>()V

    return-object p1

    :cond_6
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzo;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
