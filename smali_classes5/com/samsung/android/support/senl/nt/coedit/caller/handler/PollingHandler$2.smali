.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;->requestUpdateTitleAndDate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$2;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$2;->val$spaceId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lk/b;->a()Lk/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b;->b()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lk/a;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/PollingHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
