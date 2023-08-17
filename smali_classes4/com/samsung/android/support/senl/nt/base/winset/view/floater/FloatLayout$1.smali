.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onActionEnd()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->isStateDocking()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;Z)V

    :cond_1
    return-void
.end method

.method public onActionStart()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->onActionStart()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;I)V

    return-void
.end method
