.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzwb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;


# instance fields
.field private zzb:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "internal:health-checking-config"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zztd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
.end method

.method public zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzb:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)Z

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzb:I

    return-void
.end method

.method public abstract zzc()V
.end method

.method public zzd(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzb:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzb:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzvx;)V

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zzb:I

    const/4 p1, 0x1

    return p1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzp:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zzd()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvx;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztf;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameResolver returned no usable address. addrs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", attrs="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwb;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    return v1
.end method
