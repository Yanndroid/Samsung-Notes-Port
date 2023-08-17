.class public final synthetic Lcom/samsung/android/support/senl/nt/coedit/control/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->a:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->d:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->a:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/b;->d:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->a(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;)V

    return-void
.end method
