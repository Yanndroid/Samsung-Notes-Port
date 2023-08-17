.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    const-string v0, "CoeditSpaceMode"

    const-string v1, "SpaceRemoveResultListener# onFail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->dismissDeleteDialog()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "CoeditSpaceMode"

    const-string v1, "SpaceRemoveResultListener# onSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->dismissDeleteDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;->onBackKeyDown()Z

    return-void
.end method
