.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryCallbackInfo"
.end annotation


# instance fields
.field public mCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;

.field public mHashCode:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;->mHashCode:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;->mCallback:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;

    return-void
.end method
