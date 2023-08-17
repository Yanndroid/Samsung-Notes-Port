.class Lcom/samsung/android/sdk/pen/widget/SpenHashTag$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/widget/SpenHashTag;-><init>(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/widget/SpenHashTag;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$2;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenHashTag$2;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenHashTag;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/widget/SpenHashTag;->showConfirmView(Z)V

    :cond_0
    return-void
.end method
