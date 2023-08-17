.class public Ll2/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/c$a;->onReceived(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll2/c$a;


# direct methods
.method public constructor <init>(Ll2/c$a;)V
    .locals 0

    iput-object p1, p0, Ll2/c$a$a;->a:Ll2/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNoteInfo() : fail to get authorization, errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errMsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyncServerNoteInfoHelper"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ll2/a;

    invoke-direct {v0}, Ll2/a;-><init>()V

    new-instance v1, Ll2/b;

    iget-object v2, p0, Ll2/c$a$a;->a:Ll2/c$a;

    iget-object v3, v2, Ll2/c$a;->c:Ll2/c;

    iget-object v3, v3, Ll2/c;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    iget-object v2, v2, Ll2/c$a;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ll2/b;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
