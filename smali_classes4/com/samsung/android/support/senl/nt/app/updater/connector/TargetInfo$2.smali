.class Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->setOnDeviceIdHelperForSamsungNotes(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$2;->val$onDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$2;->val$onDeviceIdListener:Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo;->setOnDeviceIdHelper(Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;)V

    return-void
.end method
