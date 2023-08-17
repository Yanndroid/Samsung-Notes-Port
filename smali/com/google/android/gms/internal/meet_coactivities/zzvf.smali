.class public final Lcom/google/android/gms/internal/meet_coactivities/zzvf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field private final zzb:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Ljava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzto;Lcom/google/android/gms/internal/meet_coactivities/zzve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "status"

    invoke-static {p1, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvf;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzvd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzvd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzvd;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzvc;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzvf;->zzb:Ljava/lang/Object;

    return-object v0
.end method
