.class public final Lcom/google/android/gms/internal/meet_coactivities/zzpc;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzpb;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/meet_coactivities/zzpc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzo()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzj(Lcom/google/android/gms/internal/meet_coactivities/zzpd;I)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/meet_coactivities/zzpc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzo()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzpd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpd;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzpd;J)V

    return-object p0
.end method
