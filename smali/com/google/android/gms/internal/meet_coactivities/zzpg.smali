.class public final Lcom/google/android/gms/internal/meet_coactivities/zzpg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

.field public static final synthetic zzb:I = 0x0

.field private static volatile zzc:Z = false


# instance fields
.field private final zzd:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzpg;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/meet_coactivities/zzpg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzrc;I)Lcom/google/android/gms/internal/meet_coactivities/zzps;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zzd:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/meet_coactivities/zzpf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzpf;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzps;

    return-object p1
.end method
