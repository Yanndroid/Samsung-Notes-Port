.class final Lcom/google/android/gms/internal/meet_coactivities/zzlo;
.super Lcom/google/android/gms/internal/meet_coactivities/zzll;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzll;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzlp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzlo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzlo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzll;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzll;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzln;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzln;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzlm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzlo;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzlp;

    return-void
.end method

.method public static final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzll;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzlo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzll;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method
