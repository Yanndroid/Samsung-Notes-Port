.class final Lcom/google/android/gms/internal/meet_coactivities/zzwl;
.super Lcom/google/android/gms/internal/meet_coactivities/zzwp;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzwm;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/google/android/gms/internal/meet_coactivities/zzwm;Lcom/google/android/gms/internal/meet_coactivities/zzwk;)V
    .locals 1

    const/4 p2, 0x0

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

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzwm;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwm;

    return-void
.end method


# virtual methods
.method public final zza([B)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwm;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzwm;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzwl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwm;->zzb(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method
