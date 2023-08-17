.class Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandOffUtil;->checkAvailableToUpdateStateFromHandoff(Landroid/app/Activity;)V

    return-void
.end method
