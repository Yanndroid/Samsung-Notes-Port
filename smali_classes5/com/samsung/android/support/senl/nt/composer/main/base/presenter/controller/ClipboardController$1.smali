.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;Landroid/view/View;Landroid/content/ClipData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->paste(Landroid/view/View;Landroid/content/ClipData;)V

    return-void
.end method

.method private paste(Landroid/view/View;Landroid/content/ClipData;)V
    .locals 13

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->i()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPasteListener$onPaste, view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", null clipData."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->getPastePosition()Landroid/graphics/PointF;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$2;

    invoke-direct {v11, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;)V

    const/4 v12, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;-><init>(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;ILandroid/graphics/PointF;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->executeTaskPaste(Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->i()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnPasteListener$onPaste# "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPaste"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;)Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController$1;Landroid/view/View;[Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
