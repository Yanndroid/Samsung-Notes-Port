.class public final enum Lcom/google/android/gms/internal/meet_coactivities/zzwy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

.field public static final enum zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

.field public static final enum zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

.field public static final enum zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

.field public static final enum zze:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/meet_coactivities/zzwy;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const-string v1, "UNARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzwy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const-string v3, "CLIENT_STREAMING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/meet_coactivities/zzwy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    new-instance v3, Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const-string v5, "SERVER_STREAMING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/meet_coactivities/zzwy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const-string v7, "BIDI_STREAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/meet_coactivities/zzwy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/gms/internal/meet_coactivities/zzwy;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzf:[Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/meet_coactivities/zzwy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzf:[Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/meet_coactivities/zzwy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
