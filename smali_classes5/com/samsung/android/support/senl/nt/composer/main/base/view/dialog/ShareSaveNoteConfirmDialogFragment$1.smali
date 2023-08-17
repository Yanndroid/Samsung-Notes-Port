.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;->getPositiveButtonClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/ShareSaveNoteConfirmDialogFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/ShareSaveNoteConfirmDialogPresenter;->save()V

    return-void
.end method
