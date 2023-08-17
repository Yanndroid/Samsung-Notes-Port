.class public final synthetic Lk3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/v;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

    iput-object p2, p0, Lk3/v;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/v;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;

    iget-object v1, p0, Lk3/v;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;->b(Lcom/samsung/android/mcf/continuity/impl/ContinuityDiscoveryManagerImpl;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    return-void
.end method
