.class Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->getPopupView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPenClicked(Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
