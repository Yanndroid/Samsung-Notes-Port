.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CoeditMode"

    const-string v1, "[CS1] onCoeditSessionConnected# request sync"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ln/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSync(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    return-void
.end method
