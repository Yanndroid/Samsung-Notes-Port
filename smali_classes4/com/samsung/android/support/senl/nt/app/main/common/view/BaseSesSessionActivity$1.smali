.class Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

.field public final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$1;->val$permissions:[Ljava/lang/String;

    const/16 v2, 0xcb

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method
