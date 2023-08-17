.class public Lt1/a$a;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/a;->t(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
        "Lu1/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lt1/a;


# direct methods
.method public constructor <init>(Lt1/a;Z)V
    .locals 0

    iput-object p1, p0, Lt1/a$a;->b:Lt1/a;

    iput-boolean p2, p0, Lt1/a$a;->a:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu1/a$a;)V
    .locals 11

    iget-object v0, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {v0, p1}, Lt1/a;->g(Lt1/a;Lu1/a$a;)V

    iget-object p1, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {p1}, Lt1/a;->e(Lt1/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {v0}, Lt1/a;->e(Lt1/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ld1/d;

    invoke-virtual {v7}, Ld1/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ld1/d;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ld1/d;->l()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {v2}, Lt1/a;->a(Lt1/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ld1/d;->h()I

    move-result v6

    iget-boolean v8, p0, Lt1/a$a;->a:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "1"

    invoke-static/range {v2 .. v10}, Lt1/a;->l(Lt1/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILd1/d;ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {v0, p1}, Lt1/a;->k(Lt1/a;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {p1}, Lt1/a;->d(Lt1/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    iget-object v1, p0, Lt1/a$a;->b:Lt1/a;

    invoke-static {v1}, Lt1/a;->a(Lt1/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;->getUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;->getFolderUuid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lt1/a$a;->a:Z

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;->isCoeditNote()Z

    move-result v9

    invoke-static/range {v1 .. v9}, Lt1/a;->l(Lt1/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILd1/d;ZLjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lu1/a$a;

    invoke-virtual {p0, p1}, Lt1/a$a;->a(Lu1/a$a;)V

    return-void
.end method
