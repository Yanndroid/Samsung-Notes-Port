.class public final Lcom/google/android/gms/internal/meet_coactivities/zzww;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

.field private zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

.field private zzd:Ljava/lang/String;

.field private zze:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzwv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzww;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/meet_coactivities/zzww;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zze:Z

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/meet_coactivities/zzwy;)Lcom/google/android/gms/internal/meet_coactivities/zzww;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 11
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    new-instance v10, Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zze:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzwy;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;Ljava/lang/Object;ZZZLcom/google/android/gms/internal/meet_coactivities/zzwz;)V

    return-object v10
.end method
