.class Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$2;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$2;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc$2;->this$0:Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;->A(Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;IZLandroid/os/Bundle;)V

    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
