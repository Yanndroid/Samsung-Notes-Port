.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzhn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Lcom/google/android/gms/internal/meet_coactivities/zzhn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    check-cast p1, Ljava/util/Optional;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzi(Lcom/google/android/gms/internal/meet_coactivities/zzhn;Ljava/util/Optional;)Lcom/google/android/gms/internal/meet_coactivities/zznb;

    move-result-object p1

    return-object p1
.end method
