.class public Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnded(Ljava/lang/String;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;->a(Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deletion ended. Restart pended sharing : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ShareOldService"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;->requestShareNow(Ljava/lang/String;Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;->b(Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;Z)V

    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
