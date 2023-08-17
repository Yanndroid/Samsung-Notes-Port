.class public final Lcom/google/android/gms/internal/meet_coactivities/zzyr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyr;


# instance fields
.field private final zzb:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzyp;-><init>(ILcom/google/android/gms/internal/meet_coactivities/zzyo;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzyp;->zza(Z)Lcom/google/android/gms/internal/meet_coactivities/zzyp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyp;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/meet_coactivities/zzyq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzyr;

    iget v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zzb:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zzb:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BindServiceFlags{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyr;->zzb:I

    return v0
.end method
