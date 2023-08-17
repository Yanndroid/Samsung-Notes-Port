.class final enum Lcom/google/android/gms/internal/meet_coactivities/zzmr;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzmt;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/meet_coactivities/zzmr;

.field private static final synthetic zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzmr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzmr;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzmr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzmr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzmr;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/meet_coactivities/zzmr;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzmr;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzmr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/meet_coactivities/zzmr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzmr;->zzb:[Lcom/google/android/gms/internal/meet_coactivities/zzmr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/meet_coactivities/zzmr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/meet_coactivities/zzmr;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeSource.system()"

    return-object v0
.end method
