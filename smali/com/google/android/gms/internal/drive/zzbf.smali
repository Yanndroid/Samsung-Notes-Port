.class final Lcom/google/android/gms/internal/drive/zzbf;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Landroid/content/IntentSender;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzeq:Lcom/google/android/gms/drive/OpenFileActivityOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzbb;Lcom/google/android/gms/drive/OpenFileActivityOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzbf;->zzeq:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzgm;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbf;->zzeq:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v2, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzba:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzbb:[Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzbd:Lcom/google/android/gms/drive/DriveId;

    iget-object v1, v1, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzbe:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/drive/zzgm;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgm;)Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
