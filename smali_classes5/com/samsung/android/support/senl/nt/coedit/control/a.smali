.class public final synthetic Lcom/samsung/android/support/senl/nt/coedit/control/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->a:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->c:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final execute(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->a:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->c:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/control/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->b(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;Ljava/util/concurrent/CountDownLatch;Z)V

    return-void
.end method
