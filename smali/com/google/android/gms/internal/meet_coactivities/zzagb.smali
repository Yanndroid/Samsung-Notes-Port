.class final Lcom/google/android/gms/internal/meet_coactivities/zzagb;
.super Lcom/google/android/gms/internal/meet_coactivities/zzvz;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Ljava/lang/Throwable;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzahp;Ljava/lang/Throwable;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagb;->zza:Ljava/lang/Throwable;

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzvz;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzo:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    const-string v0, "Panic! This is a bug!"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzvt;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzagb;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    const-string v2, "panicPickResult"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzvu;)Lcom/google/android/gms/internal/meet_coactivities/zzvt;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzagb;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzvt;

    return-object p1
.end method
