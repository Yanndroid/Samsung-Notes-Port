.class public final Lcom/google/android/gms/internal/meet_coactivities/zzkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzla;


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkz;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjp;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/meet_coactivities/zzli;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzkz;->zza:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/meet_coactivities/zzli;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v7
.end method
