.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->loadDocument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadNoteCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->d(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->g(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->c(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->e(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadNoteFailed(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->d(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->g(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->c(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->e(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
