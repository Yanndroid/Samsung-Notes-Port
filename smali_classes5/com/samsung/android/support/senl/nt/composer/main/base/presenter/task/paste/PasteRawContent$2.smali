.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->handleWebCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
