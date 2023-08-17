.class Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout$OnPatternChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternChanged(Ljava/lang/String;IF)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;)Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;)Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;->onPatternChanged(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method
