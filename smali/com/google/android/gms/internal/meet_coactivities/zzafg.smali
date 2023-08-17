.class final Lcom/google/android/gms/internal/meet_coactivities/zzafg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zztl;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zztl;->zza(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaft;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaft;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzaft;)Lcom/google/android/gms/internal/meet_coactivities/zzafm;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzahk;

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahm;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzG(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahm;

    iget-object v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)Lcom/google/android/gms/internal/meet_coactivities/zzvb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzvb;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzvi;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/meet_coactivities/zzahk;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzahm;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzahm;->zzk:Lcom/google/android/gms/internal/meet_coactivities/zzahp;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzahp;->zzQ(Lcom/google/android/gms/internal/meet_coactivities/zzahp;)V

    return-void
.end method
