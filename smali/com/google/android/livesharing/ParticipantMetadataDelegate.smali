.class public interface abstract Lcom/google/android/livesharing/ParticipantMetadataDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation


# static fields
.field public static final MAX_INDIVIDUAL_PARTICIPANT_METADATA_SIZE_BYTES:J = 0xc8L


# virtual methods
.method public abstract onParticipantMetadataUpdated(Ljava/util/Set;)V
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "[",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation
.end method
