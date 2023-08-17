.class final Lcom/google/android/gms/internal/meet_coactivities/zzws;
.super Lcom/google/android/gms/internal/meet_coactivities/zzwp;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzwt;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/google/android/gms/internal/meet_coactivities/zzwt;Lcom/google/android/gms/internal/meet_coactivities/zzwr;)V
    .locals 1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lcom/google/android/gms/internal/meet_coactivities/zzwo;)V

    const-string p2, "-bin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    const-string v0, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {p4, v0, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "marshaller"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwt;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzws;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwt;

    return-void
.end method


# virtual methods
.method public final zza([B)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzws;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwt;->zza(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
