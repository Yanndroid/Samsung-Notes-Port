.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v1, v3, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v1, v3, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;II)V

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v1, v3, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v1, v3, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;II)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v1, v3, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v1, v3, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;II)V

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v1, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$900(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;II)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
