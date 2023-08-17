.class Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->initPopupView(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;->onButtonClick(I)V

    return-void
.end method
