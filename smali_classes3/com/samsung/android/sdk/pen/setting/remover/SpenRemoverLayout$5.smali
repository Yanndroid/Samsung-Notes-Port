.class Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->setTarget(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;->onTargetChanged(I)V

    :cond_1
    return-void
.end method
