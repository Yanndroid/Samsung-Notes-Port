.class final Lcom/google/android/gms/internal/meet_coactivities/zzzp;
.super Lcom/google/android/gms/internal/meet_coactivities/zzzt;
.source "SourceFile"


# instance fields
.field private final zzg:Z

.field private zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/meet_coactivities/zzwu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;Lcom/google/android/gms/internal/meet_coactivities/zztf;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzzl;Lcom/google/android/gms/internal/meet_coactivities/zztf;ILcom/google/android/gms/internal/meet_coactivities/zzzs;)V

    iput-boolean p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzg:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    new-instance v2, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method

.method public final zzb()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzzq;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzzq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzl(Lcom/google/android/gms/internal/meet_coactivities/zzzq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzzl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzzl;->zzn(Lcom/google/android/gms/internal/meet_coactivities/zzzt;)V

    return-void
.end method

.method public final zzc(ILandroid/os/Parcel;)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzx;->zza(Landroid/os/Parcel;Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzalb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzalb;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzf:Lcom/google/android/gms/internal/meet_coactivities/zzale;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method

.method public final zzd(ILandroid/os/Parcel;)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzaao;->zza(ILandroid/os/Parcel;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zztf;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzzx;->zza(Landroid/os/Parcel;Lcom/google/android/gms/internal/meet_coactivities/zztf;)Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzi:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    return-void
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzp;->zzg:Z

    return v0
.end method
