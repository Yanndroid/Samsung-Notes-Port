.class public final Lcom/google/android/gms/internal/meet_coactivities/zzyu;
.super Lcom/google/android/gms/internal/meet_coactivities/zzuq;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzahw;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

.field private zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

.field private final zze:Lcom/google/android/gms/internal/meet_coactivities/zzyv;

.field private final zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyn;Ljava/lang/String;Landroid/content/Context;)V
    .locals 16
    .param p1    # Lcom/google/android/gms/internal/meet_coactivities/zzyn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/meet_coactivities/zzuq;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzaew;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzaky;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzala;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzaky;)Lcom/google/android/gms/internal/meet_coactivities/zzala;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    const-string v2, "sourceContext"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzyx;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzyv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyv;

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyv;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyn;->zza()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/gms/internal/meet_coactivities/zzys;

    invoke-direct {v8, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzys;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyu;Landroid/content/Context;)V

    const/4 v9, 0x0

    move-object v3, v2

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/meet_coactivities/zzahw;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zztk;Lcom/google/android/gms/internal/meet_coactivities/zztg;Lcom/google/android/gms/internal/meet_coactivities/zzahr;Lcom/google/android/gms/internal/meet_coactivities/zzahq;)V

    :goto_0
    iput-object v2, v0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/google/android/gms/internal/meet_coactivities/zzys;

    invoke-direct {v14, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzys;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyu;Landroid/content/Context;)V

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/meet_coactivities/zzahw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zztk;Lcom/google/android/gms/internal/meet_coactivities/zztg;Lcom/google/android/gms/internal/meet_coactivities/zzahr;Lcom/google/android/gms/internal/meet_coactivities/zzahq;)V

    goto :goto_0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzyu;)Lcom/google/android/gms/internal/meet_coactivities/zzyr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    return-object p0
.end method

.method public static zzf(Lcom/google/android/gms/internal/meet_coactivities/zzyn;Landroid/content/Context;)Lcom/google/android/gms/internal/meet_coactivities/zzyu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;

    const-string v1, "directAddress"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzyn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyu;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyn;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/meet_coactivities/zzyu;)Lcom/google/android/gms/internal/meet_coactivities/zzyv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzyv;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/meet_coactivities/zzyu;)Lcom/google/android/gms/internal/meet_coactivities/zzyy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/meet_coactivities/zzyu;)Lcom/google/android/gms/internal/meet_coactivities/zzahw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/meet_coactivities/zzyu;)Lcom/google/android/gms/internal/meet_coactivities/zzaih;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzaih;

    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/meet_coactivities/zzyu;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final zzd()Lcom/google/android/gms/internal/meet_coactivities/zzwh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzahw;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyy;)Lcom/google/android/gms/internal/meet_coactivities/zzyu;
    .locals 1

    const-string v0, "securityPolicy"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyu;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzyy;

    return-object p0
.end method
