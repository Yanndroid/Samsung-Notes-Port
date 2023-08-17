.class public final synthetic Lk3/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

.field public final synthetic d:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/o1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iput-object p2, p0, Lk3/o1;->b:Ljava/lang/String;

    iput-object p3, p0, Lk3/o1;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iput-object p4, p0, Lk3/o1;->d:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk3/o1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iget-object v1, p0, Lk3/o1;->b:Ljava/lang/String;

    iget-object v2, p0, Lk3/o1;->c:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iget-object v3, p0, Lk3/o1;->d:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->d(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method
