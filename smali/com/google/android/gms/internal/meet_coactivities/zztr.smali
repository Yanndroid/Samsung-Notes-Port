.class final Lcom/google/android/gms/internal/meet_coactivities/zztr;
.super Lcom/google/android/gms/internal/meet_coactivities/zztj;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zztj;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzto;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zztj;Lcom/google/android/gms/internal/meet_coactivities/zzto;Lcom/google/android/gms/internal/meet_coactivities/zztq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zztj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    const-string p1, "interceptor"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzto;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzto;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/meet_coactivities/zzxa;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zztn;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzto;

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzto;->zza()Lcom/google/android/gms/internal/meet_coactivities/zztn;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztj;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
