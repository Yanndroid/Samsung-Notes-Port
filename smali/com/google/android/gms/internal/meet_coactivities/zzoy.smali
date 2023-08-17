.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzoy;
.super Lcom/google/android/gms/internal/meet_coactivities/zzoc;
.source "SourceFile"


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Ljava/util/logging/Logger;

.field private static final zzd:Z


# instance fields
.field public zza:Lcom/google/android/gms/internal/meet_coactivities/zzoz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/meet_coactivities/zzoy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzc:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzsq;->zzx()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzd:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoc;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzox;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoc;-><init>()V

    return-void
.end method

.method public static zzA(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzB(Lcom/google/android/gms/internal/meet_coactivities/zzrc;Lcom/google/android/gms/internal/meet_coactivities/zzrp;)I
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zznu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zznu;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzrp;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzC(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzsv;->zzc(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzsu; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzD(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result p0

    return p0
.end method

.method public static zzE(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzF(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/16 v4, 0x1c

    ushr-long/2addr p0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    add-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public static zzG([B)Lcom/google/android/gms/internal/meet_coactivities/zzoy;
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzov;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzov;-><init>([BII)V

    return-object v1
.end method

.method public static zzH([BII)Lcom/google/android/gms/internal/meet_coactivities/zzoy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzov;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzov;-><init>([BII)V

    return-object v0
.end method

.method public static bridge synthetic zzK()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzd:Z

    return v0
.end method

.method public static zzu([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzv(Lcom/google/android/gms/internal/meet_coactivities/zzon;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzw(ILcom/google/android/gms/internal/meet_coactivities/zzrc;Lcom/google/android/gms/internal/meet_coactivities/zzrp;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zznu;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zznu;->zzr(Lcom/google/android/gms/internal/meet_coactivities/zzrp;)I

    move-result p1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result p0

    add-int/2addr p0, p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzx(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result p0

    return p0
.end method

.method public static zzy(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzz(Lcom/google/android/gms/internal/meet_coactivities/zzqh;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzqh;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final zzI()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zza()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzJ(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzsu;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzc:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzr(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzm([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/meet_coactivities/zzow;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzow;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(B)V
.end method

.method public abstract zzd(IZ)V
.end method

.method public abstract zze(ILcom/google/android/gms/internal/meet_coactivities/zzon;)V
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/meet_coactivities/zzon;)V
.end method

.method public abstract zzg(II)V
.end method

.method public abstract zzh(I)V
.end method

.method public abstract zzi(IJ)V
.end method

.method public abstract zzj(J)V
.end method

.method public abstract zzk(II)V
.end method

.method public abstract zzl(I)V
.end method

.method public abstract zzm([BII)V
.end method

.method public abstract zzn(ILjava/lang/String;)V
.end method

.method public abstract zzo(Ljava/lang/String;)V
.end method

.method public abstract zzp(II)V
.end method

.method public abstract zzq(II)V
.end method

.method public abstract zzr(I)V
.end method

.method public abstract zzs(IJ)V
.end method

.method public abstract zzt(J)V
.end method
