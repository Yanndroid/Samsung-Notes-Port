.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/QuickNoteDialogPresenter;->onCancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;

    const-string v1, "OnSwipeDismissListener"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/QuickNoteDialog;->onDismiss(Ljava/lang/String;)V

    return-void
.end method
