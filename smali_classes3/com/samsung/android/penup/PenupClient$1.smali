.class Lcom/samsung/android/penup/PenupClient$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/PenupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v1, 0x2328

    const-string v2, "The network connection error occurred."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/penup/PenupClient$ConnectionCallback;->onConnectionFailed(Lcom/samsung/android/penup/ResponseResult;)V

    return-void
.end method
