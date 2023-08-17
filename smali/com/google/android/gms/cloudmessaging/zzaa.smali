.class final Lcom/google/android/gms/cloudmessaging/zzaa;
.super Lcom/google/android/gms/internal/cloudmessaging/zzf;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cloudmessaging/Rpc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzaa;->zza:Lcom/google/android/gms/cloudmessaging/Rpc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cloudmessaging/zzf;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzaa;->zza:Lcom/google/android/gms/cloudmessaging/Rpc;

    invoke-static {v0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Message;)V

    return-void
.end method
