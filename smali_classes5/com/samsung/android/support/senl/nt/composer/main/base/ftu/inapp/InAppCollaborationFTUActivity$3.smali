.class Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->showFTUVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$3;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
