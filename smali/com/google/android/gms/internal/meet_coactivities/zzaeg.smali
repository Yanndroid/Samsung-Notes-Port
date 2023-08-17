.class public final Lcom/google/android/gms/internal/meet_coactivities/zzaeg;
.super Lcom/google/android/gms/internal/meet_coactivities/zzaig;
.source "SourceFile"


# instance fields
.field private zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field private final zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

.field private final zze:[Lcom/google/android/gms/internal/meet_coactivities/zztw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzaig;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zze:[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzaez;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaez;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzaez;

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/meet_coactivities/zzabx;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zze:[Lcom/google/android/gms/internal/meet_coactivities/zztw;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method
