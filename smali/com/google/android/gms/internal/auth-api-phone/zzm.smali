.class abstract Lcom/google/android/gms/internal/auth-api-phone/zzm;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/auth-api-phone/zzi;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private zzf:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzm;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzi;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/zzm;->zzf:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzm;->zza(Lcom/google/android/gms/internal/auth-api-phone/zze;)V

    return-void
.end method

.method public abstract zza(Lcom/google/android/gms/internal/auth-api-phone/zze;)V
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api-phone/zzm;->zzf:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
