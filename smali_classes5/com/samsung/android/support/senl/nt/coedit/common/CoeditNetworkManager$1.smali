.class Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "]"

    const-string v2, "CoeditNetworkManager"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Network] onAvailable(), skip, already Handle ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "] to ["

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Network] onAvailable(), ignore, Change HandledNetwork ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], but still connected network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->c(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Network] onAvailable(), Change HandledNetwork ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->c(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->b(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$Callback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$Callback;->onAvailable()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CoeditNetworkManager"

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Network] onLost(), network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->c(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->b(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$Callback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$Callback;->onLost()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Network] onLost(), ignore, network mismatched, HandleNetwork: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;->a(Lcom/samsung/android/support/senl/nt/coedit/common/CoeditNetworkManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], LostNetwork: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
