.class Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->broadcast(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

.field public final synthetic val$alias:Ljava/lang/String;

.field public final synthetic val$propertyBag:Lcom/microsoft/identity/common/java/util/ported/PropertyBag;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->this$0:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$propertyBag:Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->this$0:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    iget-object v0, v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->mReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;

    const-string v1, ":broadcast"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcasting to alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$propertyBag:Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;->onReceive(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No callback is registered with alias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$1;->val$alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Do nothing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
