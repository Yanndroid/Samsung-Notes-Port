.class public final Lcom/google/android/gms/internal/gcm/zzm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzdk:Lcom/google/android/gms/internal/gcm/zzl;

.field private static final zzdl:Lcom/google/android/gms/internal/gcm/zzm;

.field private static volatile zzdm:Lcom/google/android/gms/internal/gcm/zzw;

.field private static volatile zzdn:Lcom/google/android/gms/internal/gcm/zzm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gcm/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gcm/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gcm/zzm;->zzdk:Lcom/google/android/gms/internal/gcm/zzl;

    new-instance v0, Lcom/google/android/gms/internal/gcm/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gcm/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gcm/zzm;->zzdl:Lcom/google/android/gms/internal/gcm/zzm;

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/gcm/zzm;->zzdm:Lcom/google/android/gms/internal/gcm/zzw;

    sput-object v0, Lcom/google/android/gms/internal/gcm/zzm;->zzdn:Lcom/google/android/gms/internal/gcm/zzm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzab()Lcom/google/android/gms/internal/gcm/zzm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gcm/zzm;->zzdn:Lcom/google/android/gms/internal/gcm/zzm;

    return-object v0
.end method
