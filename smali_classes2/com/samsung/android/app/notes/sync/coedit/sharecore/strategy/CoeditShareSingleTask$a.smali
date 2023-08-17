.class public Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public onSharedFileUpdated(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareSingleTask;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharecore/strategy/CoeditShareBaseTask$a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
