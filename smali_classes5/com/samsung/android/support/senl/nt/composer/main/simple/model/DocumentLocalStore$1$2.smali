.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->onLoadNoteFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;

.field public final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->d(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;->onLoadNoteFailed(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->g(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;Ljava/lang/Runnable;)V

    return-void
.end method
