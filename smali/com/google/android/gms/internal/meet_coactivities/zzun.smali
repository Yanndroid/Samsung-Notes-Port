.class final Lcom/google/android/gms/internal/meet_coactivities/zzun;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzum;

.field public final zzb:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzum;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "decompressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzum;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzun;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzum;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzun;->zzb:Z

    return-void
.end method
