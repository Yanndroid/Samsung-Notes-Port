.class public final Lcom/google/android/gms/internal/meet_coactivities/zzvl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/nio/charset/Charset;

.field public static final zzb:Lcom/google/common/io/BaseEncoding;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzvl;->zza:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzc:Lcom/google/common/io/BaseEncoding;

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzvl;->zzb:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zza()I

    move-result p0

    return p0
.end method

.method public static zzb(Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzvk;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwp;->zzd(Ljava/lang/String;ZLcom/google/android/gms/internal/meet_coactivities/zzwt;)Lcom/google/android/gms/internal/meet_coactivities/zzwp;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/meet_coactivities/zzwu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/meet_coactivities/zzwu;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzwu;->zzg()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
