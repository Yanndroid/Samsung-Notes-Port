.class Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContextMenuHandler"
.end annotation


# static fields
.field private static final MSG_HIDE:I = 0x66

.field private static final MSG_SHOW:I = 0x64

.field private static final MSG_UPDATE:I = 0x65


# instance fields
.field private mEnableVibration:Z

.field private mLatestContentRect:Landroid/graphics/RectF;

.field private mMessageCount:I

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->this$0:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mLatestContentRect:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mEnableVibration:Z

    return-void
.end method

.method private clearShowMessages()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mEnableVibration:Z

    return-void
.end method

.method private hasMessages()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->hasRectValidMessages()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public clearMessages()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->clearShowMessages()V

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mLatestContentRect:Landroid/graphics/RectF;

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->clearMessages()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "SpenContextMenu"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "handleMessage() [MSG_HIDE]"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->this$0:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->access$000(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "handleMessage() [MSG_UPDATE]"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->this$0:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mLatestContentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->setContentRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->this$0:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mLatestContentRect:Landroid/graphics/RectF;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mEnableVibration:Z

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->showContextMenu(Landroid/graphics/RectF;Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->clearShowMessages()V

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    if-lez p1, :cond_1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasRectValidMessages()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    if-gtz v0, :cond_1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public sendHideMessage()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->hasMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->clearMessages()V

    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendShowMessage(Landroid/graphics/RectF;ZI)V
    .locals 0

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mEnableVibration:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mLatestContentRect:Landroid/graphics/RectF;

    int-to-long p1, p3

    const/16 p3, 0x64

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mMessageCount:I

    :cond_0
    return-void
.end method

.method public sendUpdateMessage(Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->updateRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->hasRectValidMessages()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public updateRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu$ContextMenuHandler;->mLatestContentRect:Landroid/graphics/RectF;

    return-void
.end method
