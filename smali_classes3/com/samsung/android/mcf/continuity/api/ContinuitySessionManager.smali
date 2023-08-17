.class public interface abstract Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;,
        Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;,
        Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
    }
.end annotation


# virtual methods
.method public abstract closeSession()Z
.end method

.method public abstract disconnect(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getContinuitySessionFileManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getContinuitySessionMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract openSession(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)Z
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract registerPeerConnectionRequestListener(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;)Z
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestConnect(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract responseConnect(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract unregisterPeerConnectionRequestListener()V
.end method
