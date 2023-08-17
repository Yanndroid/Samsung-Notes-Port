.class public final Lcom/google/android/gms/internal/meet_coactivities/zzyx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/meet_coactivities/zzyx;->zza:I

    return-void
.end method

.method public static bridge synthetic zza()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzyx;->zza:I

    return v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zzyy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzyw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzyw;-><init>()V

    return-object v0
.end method
