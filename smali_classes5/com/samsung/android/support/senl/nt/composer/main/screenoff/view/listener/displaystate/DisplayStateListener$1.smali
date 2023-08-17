.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->registerListener(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged# displayId/state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->e(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged# before/after : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/DisplayStateListener;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/listener/displaystate/IDisplayStateListener;->onDisplayStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
