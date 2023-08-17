.class final Lcom/google/android/gms/internal/meet_coactivities/zzaeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzaby;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zzvj;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzwu;Lcom/google/android/gms/internal/meet_coactivities/zzti;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)Lcom/google/android/gms/internal/meet_coactivities/zzabv;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iget-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaeh;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzabw;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzaeg;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzabw;[Lcom/google/android/gms/internal/meet_coactivities/zztw;)V

    return-object p1
.end method
