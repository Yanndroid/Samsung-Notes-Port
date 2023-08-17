.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "000000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3, v1, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3, p1, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;Landroid/widget/EditText;II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;

    invoke-static {v2, v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenRGBCodeControl;III)V

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
