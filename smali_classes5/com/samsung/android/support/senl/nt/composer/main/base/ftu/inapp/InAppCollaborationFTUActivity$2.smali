.class Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;Z)V

    return p2
.end method
