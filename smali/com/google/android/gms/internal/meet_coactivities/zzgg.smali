.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzia;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgl;Lcom/google/android/gms/internal/meet_coactivities/zzia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgg;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzia;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgg;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzia;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgh;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzgl;Lcom/google/android/gms/internal/meet_coactivities/zzia;Ljava/lang/Object;)V

    return-void
.end method
