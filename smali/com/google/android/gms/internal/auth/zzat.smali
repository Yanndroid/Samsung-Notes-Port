.class final Lcom/google/android/gms/internal/auth/zzat;
.super Lcom/google/android/gms/internal/auth/zzaj;
.source "SourceFile"


# instance fields
.field private final synthetic zzcf:Lcom/google/android/gms/internal/auth/zzas;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzat;->zzcf:Lcom/google/android/gms/internal/auth/zzas;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzaj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzat;->zzcf:Lcom/google/android/gms/internal/auth/zzas;

    new-instance v1, Lcom/google/android/gms/internal/auth/zzaw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auth/zzaw;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
