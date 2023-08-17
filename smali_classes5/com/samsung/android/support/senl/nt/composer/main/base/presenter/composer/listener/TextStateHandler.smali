.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;
    }
.end annotation


# static fields
.field public static final DELAY:I = 0xc8


# instance fields
.field private mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    return-void
.end method


# virtual methods
.method public consumeAllMessages()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->consumeAllMessages()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->clearInnerQueue()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendMessageDelayed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V
    .locals 3

    if-ne p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;

    invoke-direct {v2, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler$Param;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;->updateMessagesInnerQueue(Landroid/os/Message;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    iget p3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;->mCursorInfoHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler$CursorInfoHandler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
