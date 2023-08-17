.class public Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/contentsharing/sharecore/strategy/ShareBaseTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;->e(Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShareUpdated() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShareLogic"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "ShareLogic"

    const-string v1, "onShareStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;->f(Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/d;Ljava/util/ArrayList;)V

    return-void
.end method
