.class final Lcom/google/android/gms/internal/drive/zzbg;
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
.field private final synthetic zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/drive/zzbb;Lcom/google/android/gms/drive/CreateFileActivityOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 8

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzq;->zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/gms/internal/drive/zzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v3, v1, Lcom/google/android/gms/internal/drive/zzq;->zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzq;->zzdk:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzbg;->zzer:Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v5, v1, Lcom/google/android/gms/internal/drive/zzq;->zzba:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/drive/zzq;->zzbd:Lcom/google/android/gms/drive/DriveId;

    iget v1, v1, Lcom/google/android/gms/internal/drive/zzq;->zzdl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/drive/zzu;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzu;)Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
