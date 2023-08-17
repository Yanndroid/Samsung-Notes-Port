.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->access$000(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->access$000(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;->onPenClicked(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
