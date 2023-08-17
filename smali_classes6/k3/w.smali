.class public final synthetic Lk3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

.field public final synthetic b:I

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/w;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    iput p2, p0, Lk3/w;->b:I

    iput-object p3, p0, Lk3/w;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/w;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    iget v1, p0, Lk3/w;->b:I

    iget-object v2, p0, Lk3/w;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl$1;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method
