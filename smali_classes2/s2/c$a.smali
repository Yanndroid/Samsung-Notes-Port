.class public Ls2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/c;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ls2/c;


# direct methods
.method public constructor <init>(Ls2/c;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls2/c$a;->c:Ls2/c;

    iput-object p2, p0, Ls2/c$a;->a:Ljava/util/HashMap;

    iput-object p3, p0, Ls2/c$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UEL] onResponse - SYNC_CATEGORY_FILENAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncExtraList"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    iget-object p1, p0, Ls2/c$a;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v5, p0, Ls2/c$a;->c:Ls2/c;

    invoke-static {v5}, Ls2/c;->a(Ls2/c;)Lt2/b;

    move-result-object v5

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Lb0/a;->getNoteCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v3, p0, Ls2/c$a;->c:Ls2/c;

    invoke-static {v3}, Ls2/c;->a(Ls2/c;)Lt2/b;

    move-result-object v3

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lb0/a;->getNoteCategoryDirty(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0}, Lb0/b;->getSdocContractYes()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v3, p0, Ls2/c$a;->c:Ls2/c;

    invoke-static {v3}, Ls2/c;->a(Ls2/c;)Lt2/b;

    move-result-object v3

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractNo()I

    move-result v4

    invoke-interface {v0, v3, v2, v4}, Lb0/a;->setNoteCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p1, "[UEL] finish to check DB!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Ls2/c$a;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "[UEL] failed to delete zipfile"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Ls2/c$a;->c:Ls2/c;

    invoke-static {p1}, Ls2/c;->a(Ls2/c;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->I()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ls2/c$a;->c:Ls2/c;

    invoke-static {p1}, Ls2/c;->a(Ls2/c;)Lt2/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt2/b;->V(Z)V

    :cond_3
    const-string p1, "[UEL] onResponse finish"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
