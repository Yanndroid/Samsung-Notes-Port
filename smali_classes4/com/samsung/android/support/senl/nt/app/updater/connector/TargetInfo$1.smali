.class Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->setOnDeviceIdHelper(Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$onDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$1;->val$onDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$1;->val$onDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;->success()V

    :cond_0
    return-void
.end method
