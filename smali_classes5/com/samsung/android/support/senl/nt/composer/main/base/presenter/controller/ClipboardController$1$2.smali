.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->paste(Landroid/view/View;Landroid/content/ClipData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockToShow(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->blockToShow(ZLjava/lang/String;)V

    return-void
.end method
