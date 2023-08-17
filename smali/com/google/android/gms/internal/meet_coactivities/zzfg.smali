.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

.field public final synthetic zzb:[Ljava/lang/Byte;

.field public final synthetic zzc:Lcom/google/android/livesharing/ParticipantMetadataDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;[Ljava/lang/Byte;Lcom/google/android/livesharing/ParticipantMetadataDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfg;->zzb:[Ljava/lang/Byte;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfg;->zzc:Lcom/google/android/livesharing/ParticipantMetadataDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfg;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfg;->zzb:[Ljava/lang/Byte;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfg;->zzc:Lcom/google/android/livesharing/ParticipantMetadataDelegate;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzI([Ljava/lang/Byte;Lcom/google/android/livesharing/ParticipantMetadataDelegate;)V

    return-void
.end method
