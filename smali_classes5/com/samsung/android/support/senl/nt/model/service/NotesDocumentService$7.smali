.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer$ServiceMaintainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->getDocumentServiceMaintainer()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceMaintainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$7;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind()V
    .locals 2

    const-string v0, "NotesDocumentService"

    const-string v1, "maintainConnection$onBind()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind()V
    .locals 2

    const-string v0, "NotesDocumentService"

    const-string v1, "maintainConnection$onUnbind()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService$7;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentService;->stopSelfIfNoLongerUsed()V

    return-void
.end method
