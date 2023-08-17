.class public abstract Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AbsBixby2Async"


# instance fields
.field public mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

.field public mCallbackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;->mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    iget-object p1, p1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract backgroundOperation()Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "Bixby_doInBackground"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->backgroundOperation()Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;)V
    .locals 2

    const-string v0, "AbsBixby2Async"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->getResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;->onRequestComplete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    invoke-interface {p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;->onError()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->onPostExecute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    const-string v0, "AbsBixby2Async"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mCallback:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;->onPreExecuteRequest()V

    :cond_0
    return-void
.end method
