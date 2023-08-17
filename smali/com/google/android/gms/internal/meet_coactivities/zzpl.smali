.class final Lcom/google/android/gms/internal/meet_coactivities/zzpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpl;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzrs;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzrs;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzrs;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzrs;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzc()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzsw;ILjava/lang/Object;)I
    .locals 4

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzb:I

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzD(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzsw;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Z

    add-int/2addr p1, p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzsx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsx;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p0, 0x3f

    shr-long/2addr v0, p0

    xor-long/2addr v0, v2

    goto/16 :goto_3

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p2, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p2

    goto :goto_0

    :pswitch_2
    instance-of p0, p2, Lcom/google/android/gms/internal/meet_coactivities/zzpw;

    if-eqz p0, :cond_4

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzpw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpw;->zza()I

    move-result p0

    goto :goto_2

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzE(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_4
    instance-of p0, p2, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p2, [B

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzu([B)I

    move-result v0

    goto :goto_5

    :pswitch_5
    instance-of p0, p2, Lcom/google/android/gms/internal/meet_coactivities/zzqg;

    if-eqz p0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzqg;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzz(Lcom/google/android/gms/internal/meet_coactivities/zzqh;)I

    move-result v0

    goto :goto_5

    :cond_2
    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzA(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)I

    move-result v0

    goto :goto_5

    :pswitch_6
    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzx(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)I

    move-result v0

    goto :goto_5

    :pswitch_7
    instance-of p0, p2, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-eqz p0, :cond_3

    :goto_1
    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzv(Lcom/google/android/gms/internal/meet_coactivities/zzon;)I

    move-result v0

    goto :goto_5

    :cond_3
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzC(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_5

    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_5

    :pswitch_a
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    goto :goto_4

    :cond_4
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzy(I)I

    move-result v0

    goto :goto_5

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzF(J)I

    move-result v0

    goto :goto_5

    :pswitch_d
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_5

    :pswitch_e
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    :goto_4
    move v0, v1

    :goto_5
    add-int/2addr p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zzpl;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public static zze(Lcom/google/android/gms/internal/meet_coactivities/zzoy;Lcom/google/android/gms/internal/meet_coactivities/zzsw;ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzsw;->zzj:Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzsw;->zza()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzp(II)V

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzsx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsx;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzt(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzr(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzj(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzh(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/meet_coactivities/zzpw;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzpw;

    invoke-interface {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzpw;->zza()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzl(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzl(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzr(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzon;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzov;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzov;->zzr(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzov;->zzc([BII)V

    return-void

    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-interface {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzv()I

    move-result p1

    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzov;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzov;->zzr(I)V

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzN(Lcom/google/android/gms/internal/meet_coactivities/zzoy;)V

    return-void

    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzN(Lcom/google/android/gms/internal/meet_coactivities/zzoy;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzon;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzo(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzb(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzh(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzj(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzl(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzt(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzt(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzh(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzj(J)V

    return-void

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    invoke-static {p3}, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zzh(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzp(II)V

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/meet_coactivities/zzrc;->zzN(Lcom/google/android/gms/internal/meet_coactivities/zzoy;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzoy;->zzp(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final zzf(Lcom/google/android/gms/internal/meet_coactivities/zzpk;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpk;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzqc;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzsw;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzsx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzsw;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzsx;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzrc;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzqg;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzpw;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpk;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzpk;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzsw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzsw;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzsx;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzpk;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpk;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/meet_coactivities/zzpk;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpk;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzd:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/meet_coactivities/zzpl;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzpl;

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    iget-object p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzc()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzc:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/meet_coactivities/zzpu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpu;->zzH()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzc:Z

    :cond_2
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzpk;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzpk;->zzc()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzpk;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzf(Lcom/google/android/gms/internal/meet_coactivities/zzpk;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/meet_coactivities/zzqg;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zzd:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzsc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzsc;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
