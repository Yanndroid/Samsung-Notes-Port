.class public Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->createPeerStatusListenerWrapper()Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
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

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;->lambda$onPeerStatusChanged$0(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method

.method private synthetic lambda$onPeerStatusChanged$0(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    check-cast p2, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    return-void
.end method


# virtual methods
.method public onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 1
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p2, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    if-eqz v0, :cond_0

    new-instance v0, Lk3/v0;

    invoke-direct {v0, p0, p1, p2}, Lk3/v0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$2;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string p1, "ContinuitySession"

    const-string p2, "onPeerStatusChanged"

    const-string v0, "fail to cast ContinuityNearbyMyDeviceWrapper"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
