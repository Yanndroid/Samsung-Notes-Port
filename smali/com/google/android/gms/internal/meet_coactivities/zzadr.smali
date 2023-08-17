.class final Lcom/google/android/gms/internal/meet_coactivities/zzadr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field public final synthetic zzd:Lcom/google/android/gms/internal/meet_coactivities/zzads;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzads;Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzads;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzads;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzads;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzads;)Lcom/google/android/gms/internal/meet_coactivities/zzabx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadr;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzabx;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V

    return-void
.end method
