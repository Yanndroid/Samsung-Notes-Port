.class final Lcom/google/android/gms/internal/meet_coactivities/zzjs;
.super Lcom/google/android/gms/internal/meet_coactivities/zzjt;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzjs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzjs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzjs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzjs;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzjt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/meet_coactivities/zzje;
    .locals 1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzje;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd(I)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
