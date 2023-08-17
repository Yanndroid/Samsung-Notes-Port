.class Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->showTouchOffsetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

.field public final synthetic val$formatter:Landroid/widget/NumberPicker$Formatter;

.field public final synthetic val$offsetX:Landroid/widget/NumberPicker;

.field public final synthetic val$offsetY:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$Formatter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$offsetX:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$offsetY:Landroid/widget/NumberPicker;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$formatter:Landroid/widget/NumberPicker$Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$1200(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$offsetX:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$offsetY:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$formatter:Landroid/widget/NumberPicker$Formatter;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$offsetX:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$formatter:Landroid/widget/NumberPicker$Formatter;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->val$offsetY:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->set(II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TouchOffset : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", PreTouchPosition : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$9;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->access$1200(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenWritingOptionView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
