.class public Lcom/samsung/android/app/notes/sync/importing/services/ImportService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/importing/services/ImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$a;->a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ImportService"

    const-string v1, "mImportListener - onEnded"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$a;->a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ImportService"

    const-string v1, "mImportListener - onDownloadFinished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$a;->a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public c(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/Exception;)V
    .locals 0

    const-string p1, "ImportService"

    const-string p2, "mImportListener - onFailed"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$a;->a:Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V
    .locals 0

    return-void
.end method
