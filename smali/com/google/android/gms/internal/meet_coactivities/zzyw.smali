.class final Lcom/google/android/gms/internal/meet_coactivities/zzyw;
.super Lcom/google/android/gms/internal/meet_coactivities/zzyy;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzyx;->zza()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzh:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v0, "Rejected by (internal-only) security policy"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    :goto_0
    return-object p1
.end method
