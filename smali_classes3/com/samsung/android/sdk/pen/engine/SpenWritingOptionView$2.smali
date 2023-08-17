.class Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->On:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->Off:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$302(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$302(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$400(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    move-result-object v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;->onPredictionEnabled(Z)V

    return-void
.end method
