.class public abstract Lcom/google/android/gms/internal/meet_coactivities/zzot;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zze:I = 0x0

.field private static volatile zzf:I = 0x64


# instance fields
.field public zza:I

.field public final zzb:I

.field public zzc:I

.field public zzd:Lcom/google/android/gms/internal/meet_coactivities/zzou;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzb:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzc:I

    return-void
.end method

.method public static zzF(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    neg-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzH(J)J
    .locals 3

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    neg-long v0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzI(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/meet_coactivities/zzot;
    .locals 2

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzor;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzor;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/meet_coactivities/zzoq;)V

    return-object p1
.end method

.method public static zzJ([BII)Lcom/google/android/gms/internal/meet_coactivities/zzot;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1, p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzK([BIIZ)Lcom/google/android/gms/internal/meet_coactivities/zzot;

    move-result-object p0

    return-object p0
.end method

.method public static zzK([BIIZ)Lcom/google/android/gms/internal/meet_coactivities/zzot;
    .locals 6

    new-instance p1, Lcom/google/android/gms/internal/meet_coactivities/zzop;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzop;-><init>([BIIZLcom/google/android/gms/internal/meet_coactivities/zzoo;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzop;->zze(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzqe; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract zzA(I)V
.end method

.method public abstract zzC()Z
.end method

.method public abstract zzD()Z
.end method

.method public abstract zzE(I)Z
.end method

.method public final zzG(I)I
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzc:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzot;->zzc:I

    return p1
.end method

.method public abstract zzb()D
.end method

.method public abstract zzc()F
.end method

.method public abstract zzd()I
.end method

.method public abstract zze(I)I
.end method

.method public abstract zzf()I
.end method

.method public abstract zzg()I
.end method

.method public abstract zzh()I
.end method

.method public abstract zzk()I
.end method

.method public abstract zzl()I
.end method

.method public abstract zzm()I
.end method

.method public abstract zzn()I
.end method

.method public abstract zzo()J
.end method

.method public abstract zzp()J
.end method

.method public abstract zzt()J
.end method

.method public abstract zzu()J
.end method

.method public abstract zzv()J
.end method

.method public abstract zzw()Lcom/google/android/gms/internal/meet_coactivities/zzon;
.end method

.method public abstract zzx()Ljava/lang/String;
.end method

.method public abstract zzy()Ljava/lang/String;
.end method

.method public abstract zzz(I)V
.end method
