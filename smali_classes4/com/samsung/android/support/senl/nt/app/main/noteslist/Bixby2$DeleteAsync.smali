.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DeleteAsync;
.super Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteAsync"
.end annotation


# instance fields
.field private final mUuidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;-><init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DeleteAsync;->mUuidList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public backgroundOperation()Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
    .locals 5

    const-string v0, "Bixby2"

    const-string v1, "Bixby_deleteThread start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;-><init>()V

    const-string v2, "failure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DeleteAsync;->mUuidList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DeleteAsync;->mUuidList:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->delete(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)Z

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    const-string v2, "Bixby_deleteThread end"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_1
    const-string v2, "delete param is null"

    goto :goto_0
.end method
