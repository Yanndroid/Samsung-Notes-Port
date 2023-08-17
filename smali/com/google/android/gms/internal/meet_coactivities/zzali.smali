.class final Lcom/google/android/gms/internal/meet_coactivities/zzali;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

.field private zzc:Ljava/io/ByteArrayInputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Lcom/google/android/gms/internal/meet_coactivities/zzrj;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzrj;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzc:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzt()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzc:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzc:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final read([BII)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzc:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzH([BII)Lcom/google/android/gms/internal/meet_coactivities/zzoy;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzN(Lcom/google/android/gms/internal/meet_coactivities/zzoy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzI()V

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzc:Ljava/io/ByteArrayInputStream;

    return v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-interface {v3}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzt()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzc:Ljava/io/ByteArrayInputStream;

    iput-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzali;->zzc:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method
