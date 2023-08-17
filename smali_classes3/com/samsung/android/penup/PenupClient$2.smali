.class Lcom/samsung/android/penup/PenupClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/PenupClient;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/PenupClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/PenupClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient$2;->this$0:Lcom/samsung/android/penup/PenupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/penup/PenupClient;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient$2;->this$0:Lcom/samsung/android/penup/PenupClient;

    invoke-static {v1}, Lcom/samsung/android/penup/PenupClient;->access$100(Lcom/samsung/android/penup/PenupClient;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/penup/PenupClient;->access$000()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
