.class public Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public onSharedFileUpdated(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareSingleTask;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
