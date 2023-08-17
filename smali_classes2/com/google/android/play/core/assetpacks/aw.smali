.class final Lcom/google/android/play/core/assetpacks/aw;
.super Lcom/google/android/play/core/listener/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/listener/b<",
        "Lcom/google/android/play/core/assetpacks/AssetPackState;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/play/core/assetpacks/cp;

.field private final d:Lcom/google/android/play/core/assetpacks/bw;

.field private final e:Lcom/google/android/play/core/internal/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/play/core/assetpacks/bn;

.field private final g:Lcom/google/android/play/core/assetpacks/bz;

.field private final h:Lcom/google/android/play/core/common/a;

.field private final i:Lcom/google/android/play/core/internal/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cj<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/play/core/internal/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cj<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/cp;Lcom/google/android/play/core/assetpacks/bw;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/assetpacks/bz;Lcom/google/android/play/core/assetpacks/bn;Lcom/google/android/play/core/common/a;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/internal/cj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/play/core/assetpacks/cp;",
            "Lcom/google/android/play/core/assetpacks/bw;",
            "Lcom/google/android/play/core/internal/cj<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/bz;",
            "Lcom/google/android/play/core/assetpacks/bn;",
            "Lcom/google/android/play/core/common/a;",
            "Lcom/google/android/play/core/internal/cj<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/internal/cj<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "AssetPackServiceListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/listener/b;-><init>(Lcom/google/android/play/core/internal/af;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/aw;->k:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/aw;->c:Lcom/google/android/play/core/assetpacks/cp;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/aw;->d:Lcom/google/android/play/core/assetpacks/bw;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/aw;->e:Lcom/google/android/play/core/internal/cj;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/aw;->g:Lcom/google/android/play/core/assetpacks/bz;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/aw;->f:Lcom/google/android/play/core/assetpacks/bn;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/aw;->h:Lcom/google/android/play/core/common/a;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/aw;->i:Lcom/google/android/play/core/internal/cj;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/aw;->j:Lcom/google/android/play/core/internal/cj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "pack_names"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.play.core.FLAGS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/aw;->h:Lcom/google/android/play/core/common/a;

    invoke-virtual {v2, p2}, Lcom/google/android/play/core/common/a;->a(Landroid/os/Bundle;)V

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aw;->g:Lcom/google/android/play/core/assetpacks/bz;

    sget-object v2, Lcom/google/android/play/core/assetpacks/ay;->a:Lcom/google/android/play/core/assetpacks/az;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/play/core/assetpacks/AssetPackState;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/bz;Lcom/google/android/play/core/assetpacks/az;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/play/core/listener/b;->a:Lcom/google/android/play/core/internal/af;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aw;->f:Lcom/google/android/play/core/assetpacks/bn;

    invoke-virtual {v1, v0}, Lcom/google/android/play/core/assetpacks/bn;->a(Landroid/app/PendingIntent;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aw;->j:Lcom/google/android/play/core/internal/cj;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/au;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/play/core/assetpacks/au;-><init>(Lcom/google/android/play/core/assetpacks/aw;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/aw;->i:Lcom/google/android/play/core/internal/cj;

    invoke-interface {p2}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/assetpacks/av;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/av;-><init>(Lcom/google/android/play/core/assetpacks/aw;Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/play/core/listener/b;->a:Lcom/google/android/play/core/internal/af;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/play/core/listener/b;->a:Lcom/google/android/play/core/internal/af;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aw;->c:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/cp;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/aw;->d:Lcom/google/android/play/core/assetpacks/bw;

    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/bw;->a()V

    :cond_0
    return-void
.end method

.method public final synthetic a(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aw;->c:Lcom/google/android/play/core/assetpacks/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/cp;->b(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/play/core/assetpacks/aw;->a(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/aw;->e:Lcom/google/android/play/core/internal/cj;

    invoke-interface {p1}, Lcom/google/android/play/core/internal/cj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/w;

    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/w;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aw;->k:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/assetpacks/at;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/at;-><init>(Lcom/google/android/play/core/assetpacks/aw;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
