.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createPeerConnectionRequestListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerConnectionRequestListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;->lambda$onPeerConnectionRequested$0(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    return-void
.end method

.method private synthetic lambda$onPeerConnectionRequested$0(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    check-cast p1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    check-cast p2, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    return-void
.end method


# virtual methods
.method public onPeerConnectionRequested(Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V
    .locals 1
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    if-eqz v0, :cond_0

    new-instance v0, Lk3/w0;

    invoke-direct {v0, p0, p1, p2}, Lk3/w0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$3;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string p1, "ContinuitySession"

    const-string p2, "onPeerConnectionRequested"

    const-string v0, "fail to cast ContinuityNearbyMyDeviceWrapper or ContinuityNetworkPolicyWrapper"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
