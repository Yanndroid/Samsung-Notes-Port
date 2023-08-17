.class public final Lcom/google/android/gms/internal/meet_coactivities/zzsf;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)V
    .locals 0

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzqe;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzqe;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzqe;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
