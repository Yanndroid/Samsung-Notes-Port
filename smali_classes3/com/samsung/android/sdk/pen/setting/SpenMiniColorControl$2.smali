.class Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaletteSwipe(II)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;->onPageChanged(I)V

    :cond_0
    return-void
.end method
