.class public final enum Lcom/google/android/gms/internal/meet_coactivities/zzjl;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

.field public static final enum zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

.field public static final enum zzc:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

.field public static final enum zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

.field public static final enum zze:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/meet_coactivities/zzjl;


# instance fields
.field private final zzg:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjl;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    const-string v4, "BOOLEAN"

    invoke-direct {v1, v4, v3, v2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjl;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    new-instance v4, Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    const-string v5, "CHARACTER"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjl;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    new-instance v5, Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    const-string v7, "INTEGRAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzjl;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    const-string v9, "FLOAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjl;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zzf:[Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zzg:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/meet_coactivities/zzjl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zzf:[Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/meet_coactivities/zzjl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/meet_coactivities/zzjl;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzjl;->zzg:Z

    return v0
.end method
