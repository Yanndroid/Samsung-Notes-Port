.class final Lcom/google/android/gms/internal/meet_coactivities/zzaka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzake;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzake;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaka;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaka;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaka;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzake;

    iget-object v0, v0, Lcom/google/android/gms/internal/meet_coactivities/zzake;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzakh;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaka;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzakf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzakh;->zzU(Lcom/google/android/gms/internal/meet_coactivities/zzakh;Lcom/google/android/gms/internal/meet_coactivities/zzakf;)V

    return-void
.end method
