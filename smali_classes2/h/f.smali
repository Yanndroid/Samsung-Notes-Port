.class public Lh/f;
.super Lh/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lh/a;-><init>()V

    iput-object p1, p0, Lh/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SCRPCSettingNotSupported"

    return-object v0
.end method

.method public i()V
    .locals 2

    const-string v0, "SCRPCSettingNotSupported"

    const-string v1, "notifySyncCancel() : Not supported!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "SCRPCSettingNotSupported"

    const-string v1, "notifySyncComplete() : Not supported!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(I)V
    .locals 1

    const-string p1, "SCRPCSettingNotSupported"

    const-string v0, "notifySyncError() : Not supported!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "SCRPCSettingNotSupported"

    const-string v1, "notifySyncStart() : Not supported!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
