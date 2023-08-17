.class Lcom/samsung/android/sdk/pen/widget/SpenTextManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/widget/SpenHashTag$HashTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/widget/SpenTextManager;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$4;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenTextRect(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;II)Landroid/graphics/RectF;
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$4;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$200(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRuntimeHandle()I

    move-result p1

    invoke-static {v0, v1, p1, p3}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$300(JII)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public onHashTagAdded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$4;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$100(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$4;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$100(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/listener/SpenTextManagerActionListener;->onHashTagAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SpenTextManager"

    const-string v0, "onHashTagAdded - ActionListener is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
