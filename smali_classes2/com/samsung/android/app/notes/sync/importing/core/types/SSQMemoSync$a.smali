.class public Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;->importItems()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;ZLjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;

    iput-boolean p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->a:Z

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SS$SSQMemoSync"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while putting UUID. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;II)V

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync$a;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;

    mul-int/lit8 p1, p1, 0x31

    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x33

    invoke-static {p3, p1}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;->access$000(Lcom/samsung/android/app/notes/sync/importing/core/types/SSQMemoSync;I)V

    return-void
.end method
