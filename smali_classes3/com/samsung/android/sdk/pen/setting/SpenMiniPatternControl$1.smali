.class Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternChanged(Ljava/lang/String;F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->access$002(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;F)F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;->onPatternChanged(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method
