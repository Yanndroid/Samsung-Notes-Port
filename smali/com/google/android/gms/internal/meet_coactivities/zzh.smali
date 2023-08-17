.class public final Lcom/google/android/gms/internal/meet_coactivities/zzh;
.super Lcom/google/android/gms/internal/meet_coactivities/zzpp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzrd;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzi;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zze;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzi;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzpu;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zzn()V

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpp;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzi;

    const-string v0, "1.0.5"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzi;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzi;Ljava/lang/String;)V

    return-object p0
.end method
