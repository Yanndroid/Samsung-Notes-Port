.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->requestDownloadServerNote(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

.field public final synthetic val$temporalServerNoteInfo:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->val$temporalServerNoteInfo:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDownloadServerNote#onFailed# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->c(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceived()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestDownloadServerNote#onReceived#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->b(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->f(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$2;->val$temporalServerNoteInfo:Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->tempServerNoteListener:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    return-void
.end method
