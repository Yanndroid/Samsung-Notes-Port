.class public Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareSingleTask"


# instance fields
.field private mShareSDoc:Lw/d;

.field private mShareTaskContact:Lw/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;->mShareTaskContact:Lw/e;

    return-void
.end method


# virtual methods
.method public shareProgress()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareProgress() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareSingleTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "emailID is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lw/b;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mSpaceId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lw/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareInfo:Lw/b;

    new-instance v3, Lw/c;

    invoke-direct {v3, v2}, Lw/c;-><init>(Lw/b;)V

    iput-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareOperation:Lw/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Share : Agent v."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lv/f;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", SDK v."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lv/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , Server Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , Device Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareOperation:Lw/c;

    invoke-virtual {v2, v0}, Lw/c;->a(Ljava/lang/String;)V

    new-instance v0, Lw/d;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareInfo:Lw/b;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;->mShareTaskContact:Lw/e;

    invoke-direct {v0, v2, v3}, Lw/d;-><init>(Lw/b;Lw/e;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;->mShareSDoc:Lw/d;

    invoke-virtual {v0}, Lw/d;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareInfo:Lw/b;

    invoke-virtual {v0}, Lw/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareInfo:Lw/b;

    invoke-virtual {v0}, Lw/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareInfo:Lw/b;

    invoke-virtual {v0}, Lw/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lw/a;->e(Landroid/content/Context;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuccessfulShareTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lw/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lw/f;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;->mShareTaskContact:Lw/e;

    invoke-direct {v0, v1}, Lw/f;-><init>(Lw/e;)V

    invoke-virtual {v0}, Lw/f;->g()Z

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mDocShareInfo:Lw/b;

    invoke-virtual {v0}, Lw/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
