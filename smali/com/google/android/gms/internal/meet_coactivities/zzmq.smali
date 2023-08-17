.class public final Lcom/google/android/gms/internal/meet_coactivities/zzmq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# static fields
.field public static final zza:Ljava/time/Duration;

.field public static final zzb:Ljava/time/Duration;

.field private static final zzc:D

.field private static final zzd:Ljava/time/Duration;

.field private static final zze:Ljava/time/Duration;

.field private static final zzf:Ljava/time/Duration;

.field private static final zzg:Ljava/time/Duration;

.field private static final zzh:Ljava/time/Duration;

.field private static final zzi:Ljava/time/Duration;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zza:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    long-to-double v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzc:D

    const-wide v2, 0x7fffffffffffffffL

    const-wide/32 v4, 0x3b9ac9ff

    invoke-static {v2, v3, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzb:Ljava/time/Duration;

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzd:Ljava/time/Duration;

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zze:Ljava/time/Duration;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v2, v3, v4}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzf:Ljava/time/Duration;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v4}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzg:Ljava/time/Duration;

    invoke-static {v2, v3}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzh:Ljava/time/Duration;

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzi:Ljava/time/Duration;

    return-void
.end method

.method public static zza(Ljava/time/Duration;D)Ljava/time/Duration;
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-string v1, "result does not fit into the range of a Duration"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x9

    invoke-static {v2, v3, p0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-gez p2, :cond_0

    sget-wide v2, Lcom/google/android/gms/internal/meet_coactivities/zzmq;->zzc:D

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p1, p0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Cannot multiply a duration by NaN"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
