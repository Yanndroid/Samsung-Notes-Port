.class public Ls2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/d;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ls2/d;


# direct methods
.method public constructor <init>(Ls2/d;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls2/d$a;->c:Ls2/d;

    iput-object p2, p0, Ls2/d$a;->a:Ljava/util/HashMap;

    iput-object p3, p0, Ls2/d$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UEIL] onResponse - SYNC_CATEGORY_FILENAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncExtraListInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ls2/d$a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/db/d;

    iget-object v2, p0, Ls2/d$a;->c:Ls2/d;

    invoke-static {v2}, Ls2/d;->a(Ls2/d;)Lt2/b;

    move-result-object v2

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/notes/sync/db/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/d;->c()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/p;

    iget-object v3, p0, Ls2/d$a;->c:Ls2/d;

    invoke-static {v3}, Ls2/d;->a(Ls2/d;)Lt2/b;

    move-result-object v3

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/notes/sync/db/p;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Ls2/d$a;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/notes/sync/db/d;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/db/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/e;->f()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-gtz v4, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/notes/sync/db/p;->b(Ljava/util/List;I)V

    const-string p1, "[UEIL] finish to check DB!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Ls2/d$a;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "[UEIL] failed to delete zipfile"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Ls2/d$a;->c:Ls2/d;

    invoke-static {p1}, Ls2/d;->a(Ls2/d;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->I()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ls2/d$a;->c:Ls2/d;

    invoke-static {p1}, Ls2/d;->a(Ls2/d;)Lt2/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt2/b;->V(Z)V

    :cond_4
    const-string p1, "[UEIL] onResponse finish"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
