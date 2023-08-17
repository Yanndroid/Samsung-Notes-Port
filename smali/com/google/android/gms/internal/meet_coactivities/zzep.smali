.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

.field public final synthetic zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzep;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzep;->zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzep;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzep;->zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    check-cast p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzd(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Lcom/google/android/livesharing/LiveSharingMeetingInfo;)Lcom/google/android/livesharing/CoWatchingSession;

    move-result-object p1

    return-object p1
.end method
