.class public Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;,
        Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContract:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;

.field private final mListener:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;

.field private mStrokeRecognizeCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StrokeRecognizeTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mStrokeRecognizeCount:I

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mContract:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-class v0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mContract:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "strokeRecognize start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mStrokeRecognizeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mStrokeRecognizeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mStrokeRecognizeCount:I

    invoke-static {v0}, Lx1/e;->j(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "strokeRecognize end : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mStrokeRecognizeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->TAG:Ljava/lang/String;

    const-string v0, "Restore task is running. Cannot strokeRecognize now."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->TAG:Ljava/lang/String;

    const-string v1, "Init spen sdk start."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->a()Lx/a;

    move-result-object v1

    invoke-interface {v1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    const-string v1, "Init spen sdk end."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vendor is not SAMSUNG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;->onStarted()V

    :cond_0
    invoke-static {}, Lx1/e;->f()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask;->mStrokeRecognizeCount:I

    return-void
.end method
