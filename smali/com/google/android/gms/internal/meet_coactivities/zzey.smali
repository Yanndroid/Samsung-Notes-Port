.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

.field public final synthetic zzb:Landroid/content/Context;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzey;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzm(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
