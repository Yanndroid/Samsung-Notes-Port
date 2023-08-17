.class public final Lcom/google/android/gms/internal/meet_coactivities/zznb;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:J

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zznb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzJ(Ljava/lang/Class;Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zzna;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzw()Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzna;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/meet_coactivities/zznb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-object v0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/meet_coactivities/zznb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/meet_coactivities/zznb;Lcom/google/android/gms/internal/meet_coactivities/zznf;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zznb;Lcom/google/android/gms/internal/meet_coactivities/zzns;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/meet_coactivities/zznb;Lcom/google/android/gms/internal/meet_coactivities/zzns;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzns;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzns;)Lcom/google/android/gms/internal/meet_coactivities/zznm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)Lcom/google/android/gms/internal/meet_coactivities/zzpp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzk()Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/meet_coactivities/zznb;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzj:Z

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/meet_coactivities/zznb;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzg:J

    return-wide v0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zznf;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zznf;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zznf;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zznf;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/meet_coactivities/zzns;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzns;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzns;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzpq;

    sget-object p3, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpq;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    sput-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

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
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzna;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzna;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzmz;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/meet_coactivities/zznb;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zzf"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "zze"

    aput-object p1, v4, p2

    const-string p1, "zzg"

    aput-object p1, v4, v3

    const-string p1, "zzh"

    aput-object p1, v4, v2

    const-string p1, "zzi"

    aput-object p1, v4, v1

    const-class p1, Lcom/google/android/gms/internal/meet_coactivities/zznf;

    aput-object p1, v4, v0

    const-class p1, Lcom/google/android/gms/internal/meet_coactivities/zzns;

    aput-object p1, v4, p3

    const/4 p1, 0x7

    const-string p2, "zzj"

    aput-object p2, v4, p1

    const/16 p1, 0x8

    const-string p2, "zzk"

    aput-object p2, v4, p1

    const/16 p1, 0x9

    const-string p2, "zzl"

    aput-object p2, v4, p1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zznb;

    const-string p2, "\u0000\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0002\u0002\u0208\u0003\u0208\u0004<\u0000\u0005<\u0000\u0006\u0007\u0007\u0007\u0008\u0208"

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzj:Z

    return v0
.end method

.method public final zzo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zzk:Z

    return v0
.end method

.method public final zzp()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zznb;->zze:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
