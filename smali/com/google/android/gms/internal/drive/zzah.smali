.class final Lcom/google/android/gms/internal/drive/zzah;
.super Lcom/google/android/gms/internal/drive/zzam;
.source "SourceFile"


# instance fields
.field private final synthetic zzdv:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    const/high16 p1, 0x20000000

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzah;->zzdv:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzam;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzr;

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzah;->zzdv:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzr;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/drive/zzak;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzak;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzr;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
