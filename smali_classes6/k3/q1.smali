.class public final synthetic Lk3/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/q1;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iput-object p2, p0, Lk3/q1;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    iput-object p3, p0, Lk3/q1;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/q1;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;

    iget-object v1, p0, Lk3/q1;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    iget-object v2, p0, Lk3/q1;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$2;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void
.end method
