.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->makeKeepCurrentButton(Landroid/content/Context;Landroid/view/View;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncConflictConfirmDialogFragment;)V

    return-void
.end method
