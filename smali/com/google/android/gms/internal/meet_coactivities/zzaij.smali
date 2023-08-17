.class final Lcom/google/android/gms/internal/meet_coactivities/zzaij;
.super Lcom/google/android/gms/internal/meet_coactivities/zzvz;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzvt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzvt;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvz;-><init>()V

    const-string v0, "result"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaij;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzaij;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaij;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaij;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    return-object p1
.end method
