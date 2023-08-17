.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorInfoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;
    }
.end annotation


# static fields
.field public static final MSG_CURSOR:I = 0x1

.field public static final MSG_SELECTION:I = 0x2


# instance fields
.field private mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

.field private mMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

.field private mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    return-void
.end method


# virtual methods
.method public clearInnerQueue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public consumeAllMessages()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->handleMessage(Landroid/os/Message;)V

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "textCursor"

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->textBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->start:I

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->end:I

    invoke-virtual {p1, v1, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateRichTextStateWithSelection(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->textBox:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;->start:I

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateRichTextStateWithCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;->sendHandoffData()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;->unLock(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateMessagesInnerQueue(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->mMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
