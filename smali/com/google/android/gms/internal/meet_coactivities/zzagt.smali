.class final Lcom/google/android/gms/internal/meet_coactivities/zzagt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzvz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzagv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzagv;Lcom/google/android/gms/internal/meet_coactivities/zzvz;Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvz;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iget-object v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzw(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    move-result-object v2

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzV(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Lcom/google/android/gms/internal/meet_coactivities/zzvz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzuc;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvz;

    aput-object v4, v2, v3

    const-string v3, "Entering {0} state with picker: {1}"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzagv;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzagv;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzu(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzacd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagt;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzuc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzacd;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzuc;)V

    :cond_1
    return-void
.end method
