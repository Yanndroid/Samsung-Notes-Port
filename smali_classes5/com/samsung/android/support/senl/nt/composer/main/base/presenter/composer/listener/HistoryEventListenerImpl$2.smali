.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->makeHistoryEventListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

.field public final synthetic val$undoRedoListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$2;->val$undoRedoListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$2;->val$undoRedoListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isUndoable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;->onUndoable(Z)V

    :cond_0
    return-void
.end method
