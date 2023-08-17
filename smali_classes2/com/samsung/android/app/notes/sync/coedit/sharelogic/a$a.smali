.class public Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MdeDeleteLogic"

    const-string v1, "onEnded()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->e(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MdeDeleteLogic"

    const-string v1, "onError()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a$a;->a:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;->f(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/a;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "MdeDeleteLogic"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
