.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$4;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->lambda$responseConnect$3(ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

.field public final synthetic val$peerStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$4;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$4;->val$peerStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$4;->lambda$onPeerStatusChanged$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method

.method private static synthetic lambda$onPeerStatusChanged$0(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;->onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method


# virtual methods
.method public onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 2
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl$4;->val$peerStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    new-instance v1, Lk3/s1;

    invoke-direct {v1, v0, p1, p2}, Lk3/s1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
