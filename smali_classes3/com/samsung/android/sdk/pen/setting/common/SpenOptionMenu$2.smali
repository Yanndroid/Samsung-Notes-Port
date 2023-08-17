.class Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->access$202(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
