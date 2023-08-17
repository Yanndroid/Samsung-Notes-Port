.class final Lcom/google/android/gms/internal/meet_coactivities/zzajm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzN(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajm;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzakh;)Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzajm;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzabw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method
