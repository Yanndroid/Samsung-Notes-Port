.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm(Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->onSpaceLeave()V

    return-void
.end method
