.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->initSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->i()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKey() ACTION_UP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;Z)V

    :cond_2
    :goto_0
    return p1
.end method
