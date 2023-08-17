.class Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl;->publish(Lcom/samsung/android/support/senl/nt/coedit/caller/Event;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl;

.field public final synthetic val$event:Lcom/samsung/android/support/senl/nt/coedit/caller/Event;

.field public final synthetic val$listenable:Lcom/samsung/android/support/senl/nt/coedit/caller/Listenable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl;Lcom/samsung/android/support/senl/nt/coedit/caller/Listenable;Lcom/samsung/android/support/senl/nt/coedit/caller/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl$1;->val$listenable:Lcom/samsung/android/support/senl/nt/coedit/caller/Listenable;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl$1;->val$event:Lcom/samsung/android/support/senl/nt/coedit/caller/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl$1;->val$listenable:Lcom/samsung/android/support/senl/nt/coedit/caller/Listenable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager$DefaultEventBusImpl$1;->val$event:Lcom/samsung/android/support/senl/nt/coedit/caller/Event;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/Listenable;->run(Lcom/samsung/android/support/senl/nt/coedit/caller/Event;)V

    return-void
.end method
