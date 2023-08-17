.class Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$700(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$702(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$800(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$700(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Z

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;->setGestureEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$700(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;->onMeasureMode(Z)V

    return-void
.end method
