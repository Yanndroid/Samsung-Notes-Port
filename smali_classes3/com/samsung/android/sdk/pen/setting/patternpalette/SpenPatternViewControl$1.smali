.class Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(IIZ)V
    .locals 1

    const/4 p1, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    invoke-static {p3}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->access$000(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onButtonClick() childAt="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SpenPatternViewControl"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->access$100(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;IZ)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->access$200(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;

    invoke-static {p3, p2, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;->access$100(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternViewControl;IZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onPaletteSwipe(II)V
    .locals 0

    return-void
.end method
