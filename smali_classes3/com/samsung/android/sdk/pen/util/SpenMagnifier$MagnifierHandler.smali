.class Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/util/SpenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagnifierHandler"
.end annotation


# instance fields
.field private mMagnifier:Lcom/samsung/android/sdk/pen/util/SpenMagnifier;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/util/SpenMagnifier;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;->mMagnifier:Lcom/samsung/android/sdk/pen/util/SpenMagnifier;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenMagnifier$MagnifierHandler;->mMagnifier:Lcom/samsung/android/sdk/pen/util/SpenMagnifier;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/util/SpenMagnifier;->setVisible(Z)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
