.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0-2] onFailure() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->c(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->d(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->i(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;I)V

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->j(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;Ljava/util/HashMap;Z)V

    return-void
.end method
