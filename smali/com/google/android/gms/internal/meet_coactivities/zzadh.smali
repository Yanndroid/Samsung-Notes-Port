.class final Lcom/google/android/gms/internal/meet_coactivities/zzadh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:I

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzadt;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadt;

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadh;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzadt;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzadt;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzadh;->zza:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzabv;->zzk(I)V

    return-void
.end method
