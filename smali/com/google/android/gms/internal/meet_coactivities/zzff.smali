.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzff;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzff;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    check-cast p1, Lcom/google/android/livesharing/CoWatchingSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzv(Lcom/google/android/livesharing/CoWatchingSession;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
