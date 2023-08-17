.class final Lcom/google/android/gms/internal/meet_coactivities/zzafl;
.super Lcom/google/android/gms/internal/meet_coactivities/zzael;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzacb;Lcom/google/android/gms/internal/meet_coactivities/zzabi;Lcom/google/android/gms/internal/meet_coactivities/zzafk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzael;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/meet_coactivities/zzafl;)Lcom/google/android/gms/internal/meet_coactivities/zzabi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabi;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzacb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzafl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzacb;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaby;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzafj;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzafj;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzafl;Lcom/google/android/gms/internal/meet_coactivities/zzabv;)V

    return-object p2
.end method
