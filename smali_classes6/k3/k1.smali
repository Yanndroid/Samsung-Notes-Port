.class public final synthetic Lk3/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

.field public final synthetic e:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/k1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iput p2, p0, Lk3/k1;->b:I

    iput-object p3, p0, Lk3/k1;->c:Ljava/lang/String;

    iput-object p4, p0, Lk3/k1;->d:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iput-object p5, p0, Lk3/k1;->e:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lk3/k1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;

    iget v1, p0, Lk3/k1;->b:I

    iget-object v2, p0, Lk3/k1;->c:Ljava/lang/String;

    iget-object v3, p0, Lk3/k1;->d:Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    iget-object v4, p0, Lk3/k1;->e:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;->c(Lcom/samsung/android/mcf/continuity/impl/ContinuitySessionManagerImpl;ILjava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;)V

    return-void
.end method
