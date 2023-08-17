.class Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OwnerNameRunnable"
.end annotation


# instance fields
.field private mUserName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditNotificationHelper$OwnerNameRunnable;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 2

    const-string v0, "CoeditNotificationHelper"

    const-string v1, "OwnerNameRunnable#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
