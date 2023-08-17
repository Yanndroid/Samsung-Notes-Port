.class public Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;
.super Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoeditShareSingleTask"


# instance fields
.field private mCoeditShareSDoc:Ll/d;

.field private mShareTaskContact:Ll/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;->mShareTaskContact:Ll/e;

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

    const-string v1, "CoeditShareSingleTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mContext:Landroid/content/Context;

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
    new-instance v2, Ll/b;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mSpaceId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ll/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareInfo:Ll/b;

    new-instance v3, Ll/c;

    invoke-direct {v3, v2}, Ll/c;-><init>(Ll/b;)V

    iput-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareOperation:Ll/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Share : Agent v."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareOperation:Ll/c;

    invoke-virtual {v2, v0}, Ll/c;->a(Ljava/lang/String;)V

    new-instance v0, Ll/d;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareInfo:Ll/b;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;->mShareTaskContact:Ll/e;

    invoke-direct {v0, v2, v3}, Ll/d;-><init>(Ll/b;Ll/e;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;->mCoeditShareSDoc:Ll/d;

    invoke-virtual {v0}, Ll/d;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareInfo:Ll/b;

    invoke-virtual {v0}, Ll/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareInfo:Ll/b;

    invoke-virtual {v0}, Ll/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareInfo:Ll/b;

    invoke-virtual {v0}, Ll/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ll/a;->c(Landroid/content/Context;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuccessfulShareTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ll/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mDocShareInfo:Ll/b;

    invoke-virtual {v0}, Ll/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
