.class public Lf2/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/c$a;->onReceived(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lf2/c$a;


# direct methods
.method public constructor <init>(Lf2/c$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf2/c$a$a;->c:Lf2/c$a;

    iput-object p2, p0, Lf2/c$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lf2/c$a$a;->b:Ljava/lang/String;

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

    const-string p2, "RegisterSmpUsingPam"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lf2/c$a$a;->c:Lf2/c$a;

    iget-object p1, p1, Lf2/c$a;->b:Lf2/c;

    invoke-static {p1}, Lf2/c;->c(Lf2/c;)Le2/b;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Le2/b;->onEnded(I)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;)V
    .locals 3

    new-instance p1, Lf2/a;

    invoke-direct {p1}, Lf2/a;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;

    iget-object v1, p0, Lf2/c$a$a;->c:Lf2/c$a;

    iget-object v2, v1, Lf2/c$a;->a:Landroid/content/Context;

    iget-object v1, v1, Lf2/c$a;->b:Lf2/c;

    invoke-static {v1}, Lf2/c;->c(Lf2/c;)Le2/b;

    move-result-object v1

    invoke-direct {v0, v2, p1, v1}, Lcom/samsung/android/app/notes/sync/push/base/ActivateSCloudTask;-><init>(Landroid/content/Context;Le2/a;Le2/b;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    iget-object v1, p0, Lf2/c$a$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object v1, p0, Lf2/c$a$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
