.class final Lcom/google/android/gms/internal/drive/zzax;
.super Lcom/google/android/gms/internal/drive/zzav;
.source "SourceFile"


# instance fields
.field private final synthetic zzek:Lcom/google/android/gms/internal/drive/zzj;

.field private final synthetic zzel:Lcom/google/android/gms/internal/drive/zzee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzj;Lcom/google/android/gms/internal/drive/zzee;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzax;->zzek:Lcom/google/android/gms/internal/drive/zzj;

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzax;->zzel:Lcom/google/android/gms/internal/drive/zzee;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzax;->zzek:Lcom/google/android/gms/internal/drive/zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzax;->zzel:Lcom/google/android/gms/internal/drive/zzee;

    new-instance v2, Lcom/google/android/gms/internal/drive/zzgy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzj;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
