.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    iget-object p4, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;

    move-result-object p1

    invoke-interface {p4, p2, p3, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSpaceUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActionResult;)V

    return-void
.end method
