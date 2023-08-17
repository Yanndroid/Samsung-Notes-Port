.class public interface abstract Lcom/google/android/livesharing/CoDoingSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation


# static fields
.field public static final BYTES_IN_KB:I = 0x400

.field public static final MAX_CODOING_BLOB_BYTES:I = 0x672

.field public static final PREFERRED_MAX_CODOING_BLOB_BYTES:I = 0x400


# virtual methods
.method public abstract broadcastStateUpdate(Lcom/google/android/livesharing/CoDoingState;)V
    .param p1    # Lcom/google/android/livesharing/CoDoingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
