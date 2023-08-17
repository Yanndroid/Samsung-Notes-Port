.class Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;->setVisibility(ILandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;->access$001(Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/senl/nt/app/common/widget/AnimationBottomNavigationView;->mIsHidingAnimation:Z

    const-string v0, "AnimationBottomNavigationView"

    const-string v1, "setVisibility withEndAction"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
