.class public final Lcom/google/android/gms/internal/meet_coactivities/zzamg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzamj;

.field public static final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzamh;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzamj;

    const-string v1, ""

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzamj;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzamg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzamj;

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzamh;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzamg;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzamh;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzamj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzamg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzamj;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
