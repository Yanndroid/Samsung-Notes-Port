.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->N(Lh1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/a;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lh1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;->a:Lh1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runTask, onCancel submited : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    sget-object v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->IDLE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->d(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;->a:Lh1/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lh1/a;->onCancel(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runTask onResult submited :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;->b:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    sget-object v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->IDLE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->d(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;->a:Lh1/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lh1/a;->onResult(Ljava/util/List;)V

    :cond_1
    return-void
.end method
